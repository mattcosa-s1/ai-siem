#!/usr/bin/env lua
-- Test harness for FortiOS OCSF transform script
-- Companion to fortinet/fortios.lua
--
-- Usage:
--   lua fortinet/test-fortios.lua

dofile("fortinet/fortios.lua")

--------------------------------------------------------------------------------
-- Test Helper Functions (production-ready)
--------------------------------------------------------------------------------

local passCount = 0
local failCount = 0

local function tablesEqual(t1, t2)
    if type(t1) ~= "table" or type(t2) ~= "table" then
        return t1 == t2
    end
    for k, v in pairs(t1) do
        if type(v) == "table" then
            if not tablesEqual(v, t2[k]) then return false end
        elseif t2[k] ~= v then
            return false
        end
    end
    for k, _ in pairs(t2) do
        if t1[k] == nil then return false end
    end
    return true
end

local function validateOCSFRequired(result)
    local errors = {}
    if not result.time then
        errors[#errors + 1] = "time is nil"
    elseif type(result.time) ~= "number" then
        errors[#errors + 1] = "time is not a number: " .. type(result.time)
    elseif result.time < 1e12 then
        errors[#errors + 1] = "time appears to be seconds, not milliseconds: " .. result.time
    end
    if not result.class_uid then errors[#errors + 1] = "class_uid is nil" end
    if not result.class_name then errors[#errors + 1] = "class_name is nil" end
    if not result.category_uid then errors[#errors + 1] = "category_uid is nil" end
    if not result.category_name then errors[#errors + 1] = "category_name is nil" end
    if not result.activity_id then errors[#errors + 1] = "activity_id is nil" end
    if not result.activity_name then errors[#errors + 1] = "activity_name is nil" end
    if result.type_uid and result.class_uid and result.activity_id then
        local expected = result.class_uid * 100 + result.activity_id
        if result.type_uid ~= expected then
            errors[#errors + 1] = "type_uid mismatch: got " .. result.type_uid
                .. ", expected " .. expected
        end
    elseif not result.type_uid then
        errors[#errors + 1] = "type_uid is nil"
    end
    if not result.metadata then
        errors[#errors + 1] = "metadata is nil"
    else
        if not result.metadata.version then errors[#errors + 1] = "metadata.version is nil" end
        if not result.metadata.product then
            errors[#errors + 1] = "metadata.product is nil"
        else
            if not result.metadata.product.name then errors[#errors + 1] = "metadata.product.name is nil" end
            if not result.metadata.product.vendor_name then errors[#errors + 1] = "metadata.product.vendor_name is nil" end
        end
    end
    return errors
end

local function validateTimeResolution(result, expectedResolution)
    local errors = {}
    if not result.metadata then
        errors[#errors + 1] = "metadata is nil"
        return errors
    end
    if not result.metadata.time_resolution then
        errors[#errors + 1] = "metadata.time_resolution is nil"
        return errors
    end
    if expectedResolution and result.metadata.time_resolution ~= expectedResolution then
        errors[#errors + 1] = "metadata.time_resolution mismatch: got "
            .. tostring(result.metadata.time_resolution)
            .. ", expected " .. tostring(expectedResolution)
    end
    return errors
end

local function validateMetadataStamps(result)
    local errors = {}
    if not result.metadata then
        errors[#errors + 1] = "metadata is nil (no stamps possible)"
        return errors
    end
    if not result.metadata.pipeline then errors[#errors + 1] = "metadata.pipeline is nil" end
    if not result.metadata.pipeline_name then errors[#errors + 1] = "metadata.pipeline_name is nil" end
    if not result.metadata.pipeline_version then errors[#errors + 1] = "metadata.pipeline_version is nil" end
    if not result.metadata.log_name then errors[#errors + 1] = "metadata.log_name is nil" end
    if not result.metadata.product then errors[#errors + 1] = "metadata.product is nil" end
    if not result.metadata.version then errors[#errors + 1] = "metadata.version is nil" end
    return errors
end

local function runTest(name, event, expect)
    print("\n" .. string.rep("=", 60))
    print("TEST: " .. name)
    print(string.rep("=", 60))

    local originalEvent = event
    local result = processEvent(event)

    if expect.result == "nil" then
        if result == nil then
            print("RESULT: nil (event dropped)")
            print("STATUS: PASS")
            passCount = passCount + 1
            return true
        else
            print("RESULT: non-nil (unexpected)")
            print("STATUS: FAIL (expected nil)")
            failCount = failCount + 1
            return false
        end
    end

    if expect.result == "passthrough" then
        if result == originalEvent then
            print("RESULT: Event passed through (same reference)")
            if type(result) ~= "table" then
                print("  Non-table pass-through: stamp check skipped")
                print("STATUS: PASS")
                passCount = passCount + 1
                return true
            end
            local stampErrors = validateMetadataStamps(result)
            if #stampErrors > 0 then
                print("  Metadata stamp issues:")
                for _, e in ipairs(stampErrors) do print("    - " .. e) end
                if expect.hasStamp == false then
                    print("STATUS: PASS (stamps not expected)")
                    passCount = passCount + 1
                    return true
                end
                print("STATUS: FAIL (missing metadata stamps)")
                failCount = failCount + 1
                return false
            end
            print("  Metadata stamps: OK")
            print("STATUS: PASS")
            passCount = passCount + 1
            return true
        else
            print("RESULT: Different table returned (unexpected)")
            print("STATUS: FAIL (expected pass-through)")
            failCount = failCount + 1
            return false
        end
    end

    if expect.result == "error_passthrough" then
        if result ~= originalEvent then
            print("RESULT: Different table returned (unexpected)")
            print("STATUS: FAIL (expected original event with error metadata)")
            failCount = failCount + 1
            return false
        end
        if type(result) ~= "table" then
            print("RESULT: non-table error pass-through (unexpected)")
            print("STATUS: FAIL")
            failCount = failCount + 1
            return false
        end
        if not result.metadata then
            print("RESULT: metadata missing on error pass-through")
            print("STATUS: FAIL")
            failCount = failCount + 1
            return false
        end
        if result.metadata.pipeline_status ~= "error" then
            print("RESULT: pipeline_status mismatch: " .. tostring(result.metadata.pipeline_status))
            print("STATUS: FAIL")
            failCount = failCount + 1
            return false
        end
        if type(result.metadata.pipeline_error) ~= "string" or result.metadata.pipeline_error == "" then
            print("RESULT: pipeline_error missing/invalid")
            print("STATUS: FAIL")
            failCount = failCount + 1
            return false
        end
        print("RESULT: Error metadata path verified")
        print("STATUS: PASS")
        passCount = passCount + 1
        return true
    end

    if expect.result == "ocsf" then
        if result == nil then
            print("RESULT: nil (unexpected)")
            print("STATUS: FAIL (expected OCSF result)")
            failCount = failCount + 1
            return false
        end

        print("RESULT: OCSF transformed event")
        print("  class_uid: " .. tostring(result.class_uid))
        print("  class_name: " .. tostring(result.class_name))
        print("  activity_id: " .. tostring(result.activity_id))
        print("  activity_name: " .. tostring(result.activity_name))
        print("  type_uid: " .. tostring(result.type_uid))
        print("  severity_id: " .. tostring(result.severity_id))
        print("  time: " .. tostring(result.time))

        if type(result.message) ~= "string" then
            print("  message type invalid: " .. type(result.message))
            print("STATUS: FAIL (message must be string)")
            failCount = failCount + 1
            return false
        end

        local ocsfErrors = validateOCSFRequired(result)
        if #ocsfErrors > 0 then
            print("  OCSF validation errors:")
            for _, e in ipairs(ocsfErrors) do print("    - " .. e) end
            print("STATUS: FAIL (OCSF validation)")
            failCount = failCount + 1
            return false
        end
        print("  OCSF required fields: OK")

        local stampErrors = validateMetadataStamps(result)
        if #stampErrors > 0 then
            print("  Metadata stamp errors:")
            for _, e in ipairs(stampErrors) do print("    - " .. e) end
            print("STATUS: FAIL (metadata stamps)")
            failCount = failCount + 1
            return false
        end
        print("  Metadata stamps: OK")

        if expect.expect_time_resolution ~= false then
            local timeResolutionErrors = validateTimeResolution(result, expect.time_resolution)
            if #timeResolutionErrors > 0 then
                print("  Time resolution errors:")
                for _, e in ipairs(timeResolutionErrors) do print("    - " .. e) end
                print("STATUS: FAIL (time resolution)")
                failCount = failCount + 1
                return false
            end
            print("  Time resolution stamp: OK")
        end

        if expect.class_uid and result.class_uid ~= expect.class_uid then
            print("  Expected class_uid=" .. expect.class_uid .. ", got " .. tostring(result.class_uid))
            print("STATUS: FAIL (class_uid mismatch)")
            failCount = failCount + 1
            return false
        end

        if expect.activity_id and result.activity_id ~= expect.activity_id then
            print("  Expected activity_id=" .. expect.activity_id .. ", got " .. tostring(result.activity_id))
            print("STATUS: FAIL (activity_id mismatch)")
            failCount = failCount + 1
            return false
        end

        if expect.status_id and result.status_id ~= expect.status_id then
            print("  Expected status_id=" .. expect.status_id .. ", got " .. tostring(result.status_id))
            print("STATUS: FAIL (status_id mismatch)")
            failCount = failCount + 1
            return false
        end

        if expect.severity_id and result.severity_id ~= expect.severity_id then
            print("  Expected severity_id=" .. expect.severity_id .. ", got " .. tostring(result.severity_id))
            print("STATUS: FAIL (severity_id mismatch)")
            failCount = failCount + 1
            return false
        end

        print("STATUS: PASS")
        passCount = passCount + 1
        return true
    end

    print("STATUS: FAIL (unknown expect.result: " .. tostring(expect.result) .. ")")
    failCount = failCount + 1
    return false
end

local function runDeterministicPairTest(name, eventA, eventB)
    print("\n" .. string.rep("=", 60))
    print("TEST: " .. name)
    print(string.rep("=", 60))

    local resultA = processEvent(eventA)
    local resultB = processEvent(eventB)

    if type(resultA) ~= "table" or type(resultB) ~= "table" then
        print("STATUS: FAIL (both results must be tables)")
        failCount = failCount + 1
        return false
    end

    if resultA.class_uid ~= resultB.class_uid or resultA.activity_id ~= resultB.activity_id then
        print("STATUS: FAIL (classification mismatch between equivalent events)")
        print("  A class/activity: " .. tostring(resultA.class_uid) .. "/" .. tostring(resultA.activity_id))
        print("  B class/activity: " .. tostring(resultB.class_uid) .. "/" .. tostring(resultB.activity_id))
        failCount = failCount + 1
        return false
    end

    print("STATUS: PASS")
    passCount = passCount + 1
    return true
end

--------------------------------------------------------------------------------
-- Edge Case Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# EDGE CASE TESTS")
print(string.rep("#", 60))

runTest("Nil event", nil, { result = "nil" })
runTest("String event", "not a table", { result = "passthrough", hasStamp = false })
runTest("Number event", 42, { result = "passthrough", hasStamp = false })
runTest("Empty table", {}, { result = "passthrough" })
runTest("No message field", { hostname = "test" }, { result = "passthrough" })
runTest("Empty message", { message = "" }, { result = "passthrough" })
runTest("Nil message", { message = nil, hostname = "test" }, { result = "passthrough" })
runTest("Numeric message", { message = 12345 }, { result = "passthrough" })
runTest("Table message", { message = { nested = "value" } }, { result = "passthrough" })
runTest("10KB message", { message = string.rep("A", 10240) }, { result = "passthrough" })
runTest("Special chars in message", {
    message = "Test\nmessage\twith\rspecial \"chars\" & <symbols>"
}, { result = "passthrough" })
runTest("Malformed timestamp", {
    message = "test event", timestamp = "not-a-timestamp"
}, { result = "passthrough" })
runTest("Table timestamp", {
    message = "test event",
    timestamp = { year = 2026, month = 2, day = 18, hour = 12, min = 0, sec = 0 }
}, { result = "passthrough" })
runTest("Numeric timestamp (seconds)", {
    message = "test event", timestamp = 1708000000
}, { result = "passthrough" })

--------------------------------------------------------------------------------
-- Type Validation Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# TYPE VALIDATION TESTS")
print(string.rep("#", 60))

runTest("Table severity", {
    message = "test event", severity = { bad = "type" }
}, { result = "passthrough" })

runTest("Number appname", {
    message = "test event", appname = 123
}, { result = "passthrough" })

runTest("Table hostname", {
    message = "test event", hostname = { bad = "type" }
}, { result = "passthrough" })

--------------------------------------------------------------------------------
-- Non-Matching Event Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# NON-MATCHING EVENT TESTS (pass-through)")
print(string.rep("#", 60))

runTest("Generic syslog event", {
    message = "Some other vendor syslog message",
    hostname = "othersource", appname = "unknownd", severity = 6,
    timestamp = { year = 2026, month = 2, day = 18, hour = 10, min = 30, sec = 0 }
}, { result = "passthrough" })

runTest("Syslog without type= marker", {
    message = "daemon[1234]: Connection from 10.0.0.1 accepted",
    hostname = "linuxbox", appname = "sshd", severity = 6
}, { result = "passthrough" })

runTest("KV message without type field", {
    message = 'action="accept" srcip=10.0.0.1 dstip=10.0.0.2',
    hostname = "firewall01", severity = 6
}, { result = "passthrough" })

--------------------------------------------------------------------------------
-- Boundary Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# BOUNDARY TESTS")
print(string.rep("#", 60))

runTest("null string message", { message = "null" }, { result = "passthrough" })
runTest("Zero severity", { message = "test event", severity = 0 }, { result = "passthrough" })

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 1: Traffic
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# HAPPY PATH TESTS")
print(string.rep("#", 60))

-- level="notice" -> OCSF 1.6.0 severity_id 2 (Low). Was 1 (Informational)
-- before the v1.5.3 FORTIOS_LEVEL_MAP off-by-one fix.
runTest("Traffic forward accept", {
    message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000000013" type="traffic" subtype="forward" level="notice" vd="root" srcip=192.168.1.100 srcport=54321 dstip=8.8.8.8 dstport=443 proto=6 service="HTTPS" action="accept" policyid=1 sentbyte=1024 rcvdbyte=2048 duration=30 sessionid=12345 user="admin" group="admins" srcintf="port1" dstintf="wan1" srcintfrole="lan" dstintfrole="wan" srccountry="Reserved" dstcountry="United States"',
    hostname = "fgt60f", severity = 5,
    timestamp = { year = 2024, month = 7, day = 15, hour = 10, min = 30, sec = 0 }
}, {
    result = "ocsf", class_uid = 4001, activity_id = 6, status_id = 1, severity_id = 2,
    time_resolution = "source"
})

-- level="warning" -> OCSF 1.6.0 severity_id 3 (Medium). Was 2 (Low) before
-- the v1.5.3 FORTIOS_LEVEL_MAP off-by-one fix.
runTest("Traffic forward deny", {
    message = 'date=2024-07-15 time=10:31:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000000013" type="traffic" subtype="forward" level="warning" vd="root" srcip=10.0.0.50 srcport=12345 dstip=192.168.2.1 dstport=80 proto=6 service="HTTP" action="deny" policyid=5 sentbyte=0 rcvdbyte=0 duration=0 sessionid=12346',
    hostname = "fgt60f", severity = 4,
    timestamp = { year = 2024, month = 7, day = 15, hour = 10, min = 31, sec = 0 }
}, {
    result = "ocsf", class_uid = 4001, activity_id = 5, status_id = 2, severity_id = 3,
    time_resolution = "source"
})

runTest("Traffic local close", {
    message = 'date=2024-07-15 time=10:32:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000000020" type="traffic" subtype="local" level="notice" vd="root" srcip=192.168.1.1 srcport=443 dstip=10.0.0.1 dstport=54322 proto=6 service="HTTPS" action="close" sentbyte=512 rcvdbyte=256 duration=10 sessionid=12347',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4001, activity_id = 2, status_id = 1,
    time_resolution = "source"
})

runTest("Traffic HTTP transaction (no httpmethod)", {
    message = 'date=2024-07-15 time=10:33:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0001000014" type="traffic" subtype="http-transaction" level="information" vd="root" srcip=192.168.1.100 srcport=12345 dstip=93.184.216.34 dstport=80 proto=6 service="HTTP" action="accept"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4002, activity_id = 99,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 2: DNS Activity
--------------------------------------------------------------------------------

runTest("UTM DNS query", {
    message = 'date=2024-07-15 time=10:34:00 devname="FGT60F" devid="FG6F0E1234567890" logid="1501054400" type="utm" subtype="dns" level="information" vd="root" eventtype="dns-query" srcip=192.168.1.100 srcport=55555 dstip=8.8.8.8 dstport=53 proto=17 service="DNS" action="pass" qname="example.com" qtype="A" qclass="IN"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4003, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

runTest("UTM DNS response", {
    message = 'date=2024-07-15 time=10:34:01 devname="FGT60F" devid="FG6F0E1234567890" logid="1501054401" type="utm" subtype="dns" level="information" vd="root" eventtype="dns-response" srcip=192.168.1.100 srcport=55555 dstip=8.8.8.8 dstport=53 proto=17 service="DNS" action="pass" qname="example.com" qtype="A" ipaddr="93.184.216.34"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4003, activity_id = 2, status_id = 1,
    time_resolution = "source"
})

-- level="warning" -> OCSF 1.6.0 severity_id 3 (Medium). Was 2 (Low) before
-- the v1.5.3 FORTIOS_LEVEL_MAP off-by-one fix.
runTest("UTM DNS blocked", {
    message = 'date=2024-07-15 time=10:34:02 devname="FGT60F" devid="FG6F0E1234567890" logid="1501054402" type="utm" subtype="dns" level="warning" vd="root" eventtype="dns-query" srcip=192.168.1.100 srcport=55556 dstip=8.8.8.8 dstport=53 proto=17 service="DNS" action="block" qname="malware.bad.com" qtype="A"',
    hostname = "fgt60f", severity = 4
}, {
    result = "ocsf", class_uid = 4003, activity_id = 1, status_id = 2, severity_id = 3,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 3: Web Filter
--------------------------------------------------------------------------------

runTest("UTM webfilter allow", {
    message = 'date=2024-07-15 time=10:35:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0316013056" type="utm" subtype="webfilter" level="notice" vd="root" srcip=192.168.1.100 srcport=12345 dstip=93.184.216.34 dstport=443 proto=6 service="HTTPS" action="passthrough" url="https://example.com/page" hostname="example.com" cat=52 catdesc="Information Technology" httpmethod="GET" agent="Mozilla/5.0" user="admin" group="admins" profile="default"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 6001, activity_id = 2, status_id = 1,
    time_resolution = "source"
})

runTest("UTM webfilter block", {
    message = 'date=2024-07-15 time=10:35:01 devname="FGT60F" devid="FG6F0E1234567890" logid="0316013057" type="utm" subtype="webfilter" level="warning" vd="root" srcip=192.168.1.100 srcport=12346 dstip=10.0.0.99 dstport=80 proto=6 service="HTTP" action="blocked" url="http://malicious-site.com/bad" hostname="malicious-site.com" cat=26 catdesc="Malicious Websites" httpmethod="GET" profile="strict"',
    hostname = "fgt60f", severity = 4
}, {
    result = "ocsf", class_uid = 6001, activity_id = 2, status_id = 2,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 4: Detection Findings
--------------------------------------------------------------------------------

runTest("UTM IPS detection", {
    message = 'date=2024-07-15 time=10:36:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0419016384" type="utm" subtype="ips" level="alert" vd="root" srcip=10.0.0.50 srcport=44444 dstip=192.168.1.10 dstport=445 proto=6 service="SMB" action="detected" attack="MS.SMB.Server.Trans.Peeking.Data.Information.Disclosure" attackid=40725 ref="http://www.fortinet.com/ids/VID40725" crscore=50 crlevel="high"',
    hostname = "fgt60f", severity = 1
}, {
    result = "ocsf", class_uid = 2004, activity_id = 1,
    time_resolution = "source"
})

runTest("UTM virus detection", {
    message = 'date=2024-07-15 time=10:36:01 devname="FGT60F" devid="FG6F0E1234567890" logid="0211008192" type="utm" subtype="virus" level="warning" vd="root" srcip=192.168.1.100 srcport=12345 dstip=10.0.0.99 dstport=25 proto=6 service="SMTP" action="blocked" virus="EICAR_TEST_FILE" virusid=2172 filename="eicar.com" filesize=68 filetype="data" msg="File is infected."',
    hostname = "fgt60f", severity = 4
}, {
    result = "ocsf", class_uid = 2004, activity_id = 1, status_id = 2,
    time_resolution = "source"
})

runTest("UTM app-ctrl detection", {
    message = 'date=2024-07-15 time=10:36:02 devname="FGT60F" devid="FG6F0E1234567890" logid="1059028704" type="utm" subtype="app-ctrl" level="information" vd="root" srcip=192.168.1.100 srcport=23456 dstip=157.240.1.35 dstport=443 proto=6 service="HTTPS" action="pass" app="Facebook" appcat="Social.Media" appid=15832 apprisk="elevated" applist="default"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 2004, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

runTest("UTM DLP detection", {
    message = 'date=2024-07-15 time=10:36:03 devname="FGT60F" devid="FG6F0E1234567890" logid="0954024576" type="utm" subtype="dlp" level="warning" vd="root" srcip=192.168.1.100 srcport=34567 dstip=10.0.0.99 dstport=443 proto=6 service="HTTPS" action="block" filteridx=1 filtername="SSN-Filter" filtertype="sensor" filtercat="pii" ruledata="Social Security Number"',
    hostname = "fgt60f", severity = 4
}, {
    result = "ocsf", class_uid = 2004, activity_id = 1, status_id = 2,
    time_resolution = "source"
})

runTest("UTM anomaly detection", {
    message = 'date=2024-07-15 time=10:36:04 devname="FGT60F" devid="FG6F0E1234567890" logid="0720018432" type="utm" subtype="anomaly" level="alert" vd="root" srcip=10.0.0.50 srcport=0 dstip=192.168.1.10 dstport=0 proto=1 service="ICMP" action="detected" attack="icmp_flood" attackid=16777316 count=500',
    hostname = "fgt60f", severity = 1
}, {
    result = "ocsf", class_uid = 2004, activity_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 5: Email Activity
--------------------------------------------------------------------------------

runTest("UTM emailfilter", {
    message = 'date=2024-07-15 time=10:37:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0500054000" type="utm" subtype="emailfilter" level="notice" vd="root" srcip=10.0.0.50 srcport=25 dstip=192.168.1.10 dstport=25 proto=6 service="SMTP" action="log" from="spam@bad.com" to="user@company.com" subject="Free Offer" sender="spam@bad.com" recipient="user@company.com"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4009, activity_id = 3, status_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 6: SSH Activity
--------------------------------------------------------------------------------

runTest("UTM SSH command", {
    message = 'date=2024-07-15 time=10:38:00 devname="FGT60F" devid="FG6F0E1234567890" logid="1600061000" type="utm" subtype="ssh" level="information" vd="root" srcip=192.168.1.100 srcport=45678 dstip=10.0.0.5 dstport=22 proto=6 service="SSH" action="pass" eventtype="ssh-command" login="admin" user="admin"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4007, activity_id = 6, status_id = 1,
    time_resolution = "source"
})

runTest("UTM SSH channel", {
    message = 'date=2024-07-15 time=10:38:01 devname="FGT60F" devid="FG6F0E1234567890" logid="1600061001" type="utm" subtype="ssh" level="information" vd="root" srcip=192.168.1.100 srcport=45679 dstip=10.0.0.5 dstport=22 proto=6 service="SSH" action="pass" eventtype="ssh-channel" login="admin"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4007, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 7: UTM Network Fallback
--------------------------------------------------------------------------------

runTest("UTM SSL inspection", {
    message = 'date=2024-07-15 time=10:39:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0300000000" type="utm" subtype="ssl" level="information" vd="root" srcip=192.168.1.100 srcport=45680 dstip=10.0.0.99 dstport=443 proto=6 service="HTTPS" action="pass"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4001, activity_id = 6, status_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Happy Path Tests — Group 8: Event Logs
--------------------------------------------------------------------------------

-- 8a: User auth
runTest("Event user auth logon", {
    message = 'date=2024-07-15 time=10:40:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0100032001" type="event" subtype="user" level="notice" vd="root" srcip=192.168.1.100 user="jdoe" group="employees" action="accept" method="RADIUS" msg="User jdoe login successful"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 3002, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

-- 8b: System admin auth
runTest("Event system admin logon success", {
    message = 'date=2024-07-15 time=10:41:00 devname="FGT60F" devid="FG6F0E1234567890" logid="32001" type="event" subtype="system" level="information" vd="root" srcip=192.168.1.1 user="admin" action="accept" logdesc="Admin login successful" msg="Administrator admin logged in from 192.168.1.1" sessionid=99001',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 3002, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

runTest("Event system admin logon failure", {
    message = 'date=2024-07-15 time=10:41:01 devname="FGT60F" devid="FG6F0E1234567890" logid="32002" type="event" subtype="system" level="warning" vd="root" srcip=10.0.0.50 user="admin" action="deny" logdesc="Admin login failed" msg="Administrator admin login failed from 10.0.0.50" reason="name_or_pwd_wrong"',
    hostname = "fgt60f", severity = 4
}, {
    result = "ocsf", class_uid = 3002, activity_id = 1, status_id = 2,
    time_resolution = "source"
})

-- 8b: Config change
runTest("Event system config change", {
    message = 'date=2024-07-15 time=10:42:00 devname="FGT60F" devid="FG6F0E1234567890" logid="32100" type="event" subtype="system" level="information" vd="root" user="admin" action="accept" cfgpath="firewall.policy" cfgobj="1" cfgattr="action[accept->deny]" logdesc="Configuration changed" sessionid=99001',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 3004, activity_id = 3, status_id = 1,
    time_resolution = "source"
})

-- 8b: Lifecycle (firmware update)
runTest("Event system lifecycle update", {
    message = 'date=2024-07-15 time=10:43:00 devname="FGT60F" devid="FG6F0E1234567890" logid="32110" type="event" subtype="system" level="notice" vd="root" logdesc="AV database updated" msg="Antivirus database updated to version 91.12345"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 6002, activity_id = 8,
    time_resolution = "source"
})

-- 8b: DHCP
runTest("Event system DHCP ack", {
    message = 'date=2024-07-15 time=10:44:00 devname="FGT60F" devid="FG6F0E1234567890" logid="26001" type="event" subtype="system" level="information" vd="root" srcip=192.168.1.50 dstip=192.168.1.1 logdesc="DHCP Ack" msg="DHCP ack sent"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4004, activity_id = 5,
    time_resolution = "source"
})

-- 8b: Reboot
runTest("Event system reboot", {
    message = 'date=2024-07-15 time=10:45:00 devname="FGT60F" devid="FG6F0E1234567890" logid="32138" type="event" subtype="system" level="alert" vd="root" logdesc="System reboot" msg="System is rebooting"',
    hostname = "fgt60f", severity = 1
}, {
    result = "ocsf", class_uid = 6002, activity_id = 5,
    time_resolution = "source"
})

-- 8c: VPN
runTest("Event VPN logon", {
    message = 'date=2024-07-15 time=10:46:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0101039424" type="event" subtype="vpn" level="information" vd="root" srcip=203.0.113.50 user="vpnuser" action="accept" logdesc="SSL VPN login" msg="SSL VPN login succeeded" method="certificate"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 3002, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

runTest("Event VPN tunnel up", {
    message = 'date=2024-07-15 time=10:46:01 devname="FGT60F" devid="FG6F0E1234567890" logid="23101" type="event" subtype="vpn" level="information" vd="root" action="tunnel-up" logdesc="IPsec phase 1 up"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4014, activity_id = 1,
    time_resolution = "source"
})

runTest("Event VPN tunnel down", {
    message = 'date=2024-07-15 time=10:46:02 devname="FGT60F" devid="FG6F0E1234567890" logid="23101" type="event" subtype="vpn" level="information" vd="root" action="tunnel-down" logdesc="IPsec phase 1 down"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4014, activity_id = 2,
    time_resolution = "source"
})

-- 8d: HA
runTest("Event HA lifecycle", {
    message = 'date=2024-07-15 time=10:47:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0104043009" type="event" subtype="ha" level="notice" vd="root" logdesc="HA member status changed" msg="HA member unit2 is up"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 6002, activity_id = 99,
    time_resolution = "source"
})

-- 8e: SD-WAN
runTest("Event SD-WAN traffic", {
    message = 'date=2024-07-15 time=10:48:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0200000000" type="event" subtype="sdwan" level="notice" vd="root" srcip=192.168.1.100 dstip=8.8.8.8 action="accept" logdesc="SD-WAN health check" msg="SD-WAN SLA check passed"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4001, activity_id = 6, status_id = 1,
    time_resolution = "source"
})

-- 8e: REST API
runTest("Event REST API activity", {
    message = 'date=2024-07-15 time=10:49:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0200000001" type="event" subtype="rest-api" level="information" vd="root" srcip=192.168.1.1 user="api_admin" action="accept" logdesc="REST API request"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 6003, activity_id = 2, status_id = 1,
    time_resolution = "source"
})

-- 8b: User CRUD
runTest("Event system user create", {
    message = 'date=2024-07-15 time=10:50:00 devname="FGT60F" devid="FG6F0E1234567890" logid="32129" type="event" subtype="system" level="information" vd="root" user="admin" cfgpath="user.local" cfgobj="newuser" logdesc="User created" msg="New user created" sessionid=99005',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 3004, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

-- 8b: Default system event (unrecognized logid)
runTest("Event system generic fallback", {
    message = 'date=2024-07-15 time=10:51:00 devname="FGT60F" devid="FG6F0E1234567890" logid="99999" type="event" subtype="system" level="notice" vd="root" logdesc="Unknown system event" msg="Some unknown system event occurred"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 3004, activity_id = 99,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Determinism Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# DETERMINISM TESTS")
print(string.rep("#", 60))

runDeterministicPairTest("Traffic forward: extra noise fields dont change classification",
    {
        message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000000013" type="traffic" subtype="forward" level="notice" vd="root" srcip=192.168.1.100 dstip=8.8.8.8 action="accept"',
        hostname = "fgt60f", severity = 5
    },
    {
        message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000000013" type="traffic" subtype="forward" level="notice" vd="root" srcip=10.0.0.1 dstip=10.0.0.2 action="accept" extranoise="yes" foo="bar" baz=123',
        hostname = "fgt60f-2", severity = 6
    }
)

runDeterministicPairTest("UTM DNS: minimal vs full payload same classification",
    {
        message = 'date=2024-07-15 time=10:34:00 type="utm" subtype="dns" eventtype="dns-query" action="pass" qname="example.com"',
        hostname = "fgt60f"
    },
    {
        message = 'date=2024-07-15 time=10:34:00 devname="FGT60F" devid="FG6F0E1234567890" logid="1501054400" type="utm" subtype="dns" level="information" vd="root" eventtype="dns-query" srcip=192.168.1.100 srcport=55555 dstip=8.8.8.8 dstport=53 proto=17 service="DNS" action="pass" qname="example.com" qtype="A" qclass="IN" cat=255 catdesc="Unrated"',
        hostname = "fgt60f", severity = 6
    }
)

runDeterministicPairTest("IPS detection: minimal vs full same classification",
    {
        message = 'type="utm" subtype="ips" action="detected" attack="Test.Attack" attackid=12345',
        hostname = "fgt"
    },
    {
        message = 'date=2024-07-15 time=10:36:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0419016384" type="utm" subtype="ips" level="alert" vd="root" srcip=10.0.0.50 srcport=44444 dstip=192.168.1.10 dstport=445 proto=6 service="SMB" action="detected" attack="Test.Attack" attackid=12345 ref="http://www.fortinet.com/ids/VID12345" crscore=50 crlevel="high"',
        hostname = "fgt60f", severity = 1
    }
)

--------------------------------------------------------------------------------
-- Timestamp Precedence Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# TIMESTAMP PRECEDENCE TESTS")
print(string.rep("#", 60))

runTest("Timestamp: source eventtime takes priority", {
    message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="forward" level="notice" action="accept" srcip=10.0.0.1 dstip=10.0.0.2 eventtime=1721038200',
    hostname = "fgt60f", severity = 5,
    timestamp = { year = 2026, month = 1, day = 1, hour = 0, min = 0, sec = 0 }
}, {
    result = "ocsf", class_uid = 4001,
    time_resolution = "source"
})

runTest("Timestamp: date+time fields when eventtime absent", {
    message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="forward" level="notice" action="accept" srcip=10.0.0.1 dstip=10.0.0.2',
    hostname = "fgt60f", severity = 5,
    timestamp = { year = 2026, month = 1, day = 1, hour = 0, min = 0, sec = 0 }
}, {
    result = "ocsf", class_uid = 4001,
    time_resolution = "source"
})

runTest("Timestamp: envelope fallback when source fields missing", {
    message = 'devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="forward" level="notice" action="accept" srcip=10.0.0.1 dstip=10.0.0.2',
    hostname = "fgt60f", severity = 5,
    timestamp = { year = 2024, month = 7, day = 15, hour = 10, min = 30, sec = 0 }
}, {
    result = "ocsf", class_uid = 4001,
    time_resolution = "envelope"
})

--------------------------------------------------------------------------------
-- Error Path Tests
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# ERROR PATH TESTS")
print(string.rep("#", 60))

-- Message that detects as FortiOS (has type=) but KV extraction is minimal
runTest("Minimal FortiOS event (type only, no subtype)", {
    message = 'type="traffic"',
    hostname = "fgt60f"
}, {
    result = "ocsf", class_uid = 4001
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — Syslog Framing
--------------------------------------------------------------------------------

print("\n" .. string.rep("#", 60))
print("# UPLIFT 1.1.0 TESTS")
print(string.rep("#", 60))

runTest("Syslog-framed message with tag prefix", {
    message = 'FORTIGATE: date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="forward" level="notice" vd="root" srcip=192.168.1.100 dstip=8.8.8.8 action="accept"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4001, activity_id = 6, status_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — Excluded Subtypes
--------------------------------------------------------------------------------

runTest("Event wireless subtype excluded (pass-through)", {
    message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="event" subtype="wireless" level="information" vd="root" logdesc="Wireless event"',
    hostname = "fgt60f", severity = 6
}, { result = "passthrough" })

runTest("Event switch-controller subtype excluded (pass-through)", {
    message = 'date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="event" subtype="switch-controller" level="information" vd="root" logdesc="Switch controller event"',
    hostname = "fgt60f", severity = 6
}, { result = "passthrough" })

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — HTTP Method Activity ID
--------------------------------------------------------------------------------

runTest("HTTP transaction with GET method", {
    message = 'date=2024-07-15 time=10:33:00 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="http-transaction" level="information" vd="root" srcip=192.168.1.100 dstip=93.184.216.34 dstport=80 proto=6 service="HTTP" action="accept" httpmethod="GET"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4002, activity_id = 3,
    time_resolution = "source"
})

runTest("HTTP transaction with POST method", {
    message = 'date=2024-07-15 time=10:33:01 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="http-transaction" level="information" vd="root" srcip=192.168.1.100 dstip=93.184.216.34 dstport=80 proto=6 service="HTTP" action="accept" httpmethod="POST"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4002, activity_id = 6,
    time_resolution = "source"
})

runTest("HTTP transaction with PUT method", {
    message = 'date=2024-07-15 time=10:33:02 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="http-transaction" level="information" vd="root" srcip=192.168.1.100 dstip=93.184.216.34 dstport=80 proto=6 service="HTTP" action="accept" httpmethod="PUT"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4002, activity_id = 7,
    time_resolution = "source"
})

runTest("HTTP transaction with DELETE method", {
    message = 'date=2024-07-15 time=10:33:03 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="http-transaction" level="information" vd="root" srcip=192.168.1.100 dstip=93.184.216.34 dstport=80 proto=6 service="HTTP" action="accept" httpmethod="DELETE"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4002, activity_id = 2,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — Long-Form LogID Normalization
--------------------------------------------------------------------------------

runTest("Long-form logid normalization (0100032001 -> 32001 admin auth)", {
    message = 'date=2024-07-15 time=10:41:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0100032001" type="event" subtype="system" level="information" vd="root" srcip=192.168.1.1 user="admin" action="accept" logdesc="Admin login successful" msg="Admin logged in"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 3002, activity_id = 1, status_id = 1,
    time_resolution = "source"
})

runTest("Long-form logid normalization (0000026001 -> 26001 DHCP)", {
    message = 'date=2024-07-15 time=10:44:00 devname="FGT60F" devid="FG6F0E1234567890" logid="0000026001" type="event" subtype="system" level="information" vd="root" srcip=192.168.1.50 dstip=192.168.1.1 logdesc="DHCP Ack"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4004, activity_id = 5,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — DHCP Logids 26005-26010
--------------------------------------------------------------------------------

runTest("DHCP logid 26005 (Other)", {
    message = 'date=2024-07-15 time=10:44:05 devname="FGT60F" devid="FG6F0E1234567890" logid="26005" type="event" subtype="system" level="information" vd="root" logdesc="DHCP event"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4004, activity_id = 99,
    time_resolution = "source"
})

runTest("DHCP logid 26010 (Other)", {
    message = 'date=2024-07-15 time=10:44:10 devname="FGT60F" devid="FG6F0E1234567890" logid="26010" type="event" subtype="system" level="information" vd="root" logdesc="DHCP event"',
    hostname = "fgt60f", severity = 6
}, {
    result = "ocsf", class_uid = 4004, activity_id = 99,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — Keyword Fallback Classification
--------------------------------------------------------------------------------

runTest("Keyword fallback: dns keyword in msg", {
    message = 'date=2024-07-15 time=10:52:00 devname="FGT60F" devid="FG6F0E1234567890" type="newtype" subtype="custom" level="notice" vd="root" msg="dns resolution failed for host"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4003, activity_id = 99,
    time_resolution = "source"
})

runTest("Keyword fallback: login keyword in logdesc", {
    message = 'date=2024-07-15 time=10:52:01 devname="FGT60F" devid="FG6F0E1234567890" type="newtype" subtype="custom" level="notice" vd="root" logdesc="User login attempt"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 3002, activity_id = 99,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Uplift 1.1.0 Tests — Syslog PRI Header Stripping
--------------------------------------------------------------------------------

runTest("Syslog PRI <189> prefix stripped from KV parsing", {
    message = '<189>date=2026-01-28 time=12:30:47 devname="DEVICE" devid="FG101FTK123456" eventtime=1769565647343697010 tz="+1030" logid="0001000014" type="traffic" subtype="local" level="notice" vd="root" srcip=172.16.11.11 srcport=61111 srcintf="Management" srcintfrole="lan" dstip=255.255.255.255 dstport=61111 dstintf="root" dstintfrole="undefined" srccountry="Reserved" dstcountry="Reserved" sessionid=781918186 proto=17 action="deny" policyid=0 policytype="local-in-policy" service="udp/61111" trandisp="noop" app="udp/61111" duration=0 sentbyte=0 rcvdbyte=0 sentpkt=0 rcvdpkt=0 msg="Connection Failed"',
    hostname = "device", severity = 5
}, {
    result = "ocsf", class_uid = 4001, activity_id = 5, status_id = 2,
    time_resolution = "source"
})

runTest("Syslog PRI + tag prefix both stripped", {
    message = '<189>FORTIGATE: date=2024-07-15 time=10:30:00 devname="FGT60F" devid="FG6F0E1234567890" type="traffic" subtype="forward" level="notice" vd="root" srcip=192.168.1.100 dstip=8.8.8.8 action="accept"',
    hostname = "fgt60f", severity = 5
}, {
    result = "ocsf", class_uid = 4001, activity_id = 6, status_id = 1,
    time_resolution = "source"
})

--------------------------------------------------------------------------------
-- Summary
--------------------------------------------------------------------------------

print("\n" .. string.rep("=", 60))
print("TEST SUMMARY")
print(string.rep("=", 60))
print("  PASSED: " .. passCount)
print("  FAILED: " .. failCount)
print("  TOTAL:  " .. (passCount + failCount))
print(string.rep("=", 60))

if failCount > 0 then
    print("\nRESULT: FAILURES DETECTED")
    os.exit(1)
else
    print("\nRESULT: ALL TESTS PASSED")
    os.exit(0)
end
