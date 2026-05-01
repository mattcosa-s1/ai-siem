# FortiOS 7.6.6 → OCSF 1.6.0 Transform Mapping

> Companion to `fortios.md` (master field-level schema) and `fortios-extended.md` (wireless/switch-controller).
> OCSF Schema: `../ocsf-schema/snapshots/1.6.0/ocsf-schema-1.6.0.json`

## Schema Lookup Commands

Set the schema path once, then use these `jq` commands when you need field-level detail beyond what this mapping provides.

```bash
SCHEMA=../ocsf-schema/snapshots/1.6.0/ocsf-schema-1.6.0.json

# Class definition — attribute list, uid, category, constraints
jq '.classes.CLASS_KEY | {uid, caption, category_uid, category_name, description, constraints, attributes: (.attributes | keys)}' "$SCHEMA"

# Activity IDs for a class (authoritative — always use this, never hardcode)
jq '.classes.CLASS_KEY.attributes.activity_id.enum | to_entries | map({id: .key, name: .value.caption}) | sort_by(.id | tonumber)' "$SCHEMA"

# Enum values for any class attribute (e.g., status_id, action_id, severity_id)
jq '.classes.CLASS_KEY.attributes.ATTR_NAME.enum | to_entries | map({id: .key, name: .value.caption})' "$SCHEMA"

# Base event enums (severity_id, status_id — inherited by all classes)
jq '.base_event.attributes.ATTR_NAME.enum | to_entries | map({id: .key, name: .value.caption})' "$SCHEMA"

# Object definition (e.g., network_endpoint, device, actor, finding_info)
jq '.objects.OBJECT_NAME | {caption, description, attributes: (.attributes | keys)}' "$SCHEMA"

# Observable type_id values (for addObservable)
jq '.objects.observable.attributes.type_id.enum | to_entries | map({id: .key, name: .value.caption}) | sort_by(.id | tonumber)' "$SCHEMA"

# List all classes
jq '[.classes | to_entries[] | {key: .key, uid: .value.uid, caption: .value.caption, category: .value.category_name}] | sort_by(.uid)' "$SCHEMA"
```

Replace `CLASS_KEY`, `ATTR_NAME`, `OBJECT_NAME` with values from the tables below.

### FortiOS Master Schema Search (`fortios.md`)

The master schema at `fortinet/fortios.md` contains the complete field-level definitions for every log ID. Use these search patterns to pull targeted context without loading the full 42K-line file.

```bash
FOS=fortinet/fortios.md
FOS_EXT=fortinet/fortios-extended.md

# ── Log ID Lookup ──────────────────────────────────────────────────────

# Full definition for a specific log ID (header + metadata + field table)
#   Returns the ### heading, meaning/type/category/severity line, and field table
#   until the next ### heading. Adjust -A count for large tables.
grep -A 60 '^### 32001 ' "$FOS"

# Find a log ID by name keyword (e.g., all tunnel-related IDs)
grep '^### ' "$FOS" | grep -i 'tunnel'

# Find a log ID by meaning keyword
grep -i 'admin login' "$FOS" | head -10

# ── Category / Section Browsing ────────────────────────────────────────

# List all category sections
grep '^## ' "$FOS"

# List all log IDs within a category (e.g., all Traffic log IDs)
#   Prints from the ## heading to the next ## heading
sed -n '/^## Traffic$/,/^## [A-Z]/p' "$FOS" | grep '^### '

# Count log IDs per category
for cat in $(grep '^## ' "$FOS" | sed 's/^## //'); do
  count=$(sed -n "/^## ${cat}$/,/^## /p" "$FOS" | grep -c '^### ')
  [ "$count" -gt 0 ] && echo "$cat: $count"
done

# ── Field Lookup ───────────────────────────────────────────────────────

# Check if a specific field exists and its type across all log IDs
#   (field names appear as first column in markdown tables)
grep '| tunneltype ' "$FOS"

# Find all log categories that use a specific field
grep -B 30 '| virus ' "$FOS" | grep '^## \|^### '

# Find all fields for a specific log ID (just the table rows)
grep -A 80 '^### 18432 ' "$FOS" | grep '^| ' | grep -v '^| Field'

# ── Bulk Field Discovery ──────────────────────────────────────────────

# List every unique field name across the entire schema
grep '^| ' "$FOS" | awk -F'|' '{print $2}' | sed 's/^ *//;s/ *$//' | \
  grep -v '^Field$' | grep -v '^-' | sort -u

# Find fields unique to a category (e.g., fields only in IPS)
comm -23 \
  <(sed -n '/^## IPS$/,/^## /p' "$FOS" | grep '^| ' | awk -F'|' '{print $2}' | sed 's/^ *//;s/ *$//' | sort -u) \
  <(sed -n '/^## Traffic$/,/^## /p' "$FOS" | grep '^| ' | awk -F'|' '{print $2}' | sed 's/^ *//;s/ *$//' | sort -u)

# ── FortiGuard Web Filter Category ────────────────────────────────────

# Lookup category name by number
grep '^| 41 ' "$FOS"

# Search category by name
grep -i 'malicious' "$FOS" | grep '^| '

# ── Cross-Reference Extended Schema ───────────────────────────────────

# Search wireless/switch-controller events (moved to extended file)
grep '^### ' "$FOS_EXT" | head -20
grep -A 60 '^### 43520 ' "$FOS_EXT"
```

**When to search:** Use these commands when this mapping document gives you the OCSF target class and field paths, but you need to verify exact FortiOS field names, data types, or lengths for a specific log ID before writing the transform code.

### IANA Protocol Reference

```bash
IANA=../ocsf-schema/iana_protocol_num.md

grep -i '| TCP '  "$IANA"    # Lookup by keyword
grep '^| 6 '      "$IANA"    # Lookup by decimal
grep -i 'encapsulat' "$IANA" # Search description
```

---

## Global Enum References

### severity_id (all classes)

| FortiOS level | OCSF severity_id | OCSF Name |
|---------------|-------------------|-----------|
| emergency | 6 | Fatal |
| alert | 5 | Critical |
| critical | 4 | High |
| error | 3 | Medium |
| warning | 2 | Low |
| notice | 1 | Informational |
| information | 1 | Informational |

### status_id (all classes)

| ID | Name |
|----|------|
| 0 | Unknown |
| 1 | Success |
| 2 | Failure |
| 99 | Other |

### action_id (network/finding classes)

| ID | Name | FortiOS action values |
|----|------|-----------------------|
| 0 | Unknown | — |
| 1 | Allowed | accept, pass, passthrough, start, close, timeout |
| 2 | Denied | deny, block, blocked, reject, drop |
| 3 | Observed | monitor |
| 99 | Other | — |

### disposition_id (network/finding classes)

| ID | Name | FortiOS action values |
|----|------|-----------------------|
| 1 | Allowed | accept, pass, passthrough, allow |
| 2 | Blocked | block, blocked, deny |
| 6 | Dropped | drop |
| 15 | Detected | detected, monitor |
| 17 | Logged | log |
| 21 | Reset | reset |
| 25 | Rejected | reject |
| 99 | Other | — |

---

## Routing Strategy

The transform dispatches on `type` → `subtype` (and sometimes `eventtype` or `logid` range) to select the OCSF class. The execution order below is optimized so the highest-volume categories are checked first.

```
type="traffic"     → Group 1: Network Traffic
type="utm"
  subtype="dns"    → Group 2: DNS
  subtype="webfilter" → Group 3: Web Filter
  subtype="virus"|"ips"|"anomaly"|"app-ctrl"|"dlp"|"file-filter"|"virtual-patch"|"waf"|"casb"
                   → Group 4: Detection Findings
  subtype="emailfilter" → Group 5: Email
  subtype="ssh"    → Group 6: SSH
  subtype="ssl"|"icap"|"voip"|"gtp"|"forti-switch"|"debug"
                   → Group 7: Other Network/Fallback
type="event"
  subtype="user"   → Group 8a: Authentication / User
  subtype="system" → Group 8b: System Events (dispatches further by logid range)
  subtype="vpn"    → Group 8c: VPN
  subtype="ha"     → Group 8d: HA
  subtype="sdwan"|"router"|"endpoint"|others → Group 8e: Operational
```

---

## Group 1: Network Traffic

**FortiOS source:** `type="traffic"`, all subtypes (forward, local, multicast, sniffer, ztna, http-transaction)
**Log count:** 23 log IDs — but highest volume category in production
**Master schema ref:** `fortios.md` → `## Traffic`

### OCSF Mapping

| OCSF Class | class_uid | Key | Condition |
|------------|-----------|-----|-----------|
| Network Activity | 4001 | `network_activity` | Default for all traffic logs |
| HTTP Activity | 4002 | `http_activity` | When `subtype="http-transaction"` |

### Activity ID

| FortiOS action | activity_id | Name | type_uid |
|----------------|-------------|------|----------|
| start | 1 | Open | 400101 / 400201 |
| close, timeout | 2 | Close | 400102 / 400202 |
| deny, ip-conn | 5 | Refuse | 400105 |
| accept (mid-session stats) | 6 | Traffic | 400106 |
| client-rst, server-rst | 3 | Reset | 400103 |
| dns | 99 | Other | 400199 |

### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| srcip | src_endpoint.ip | |
| srcport | src_endpoint.port | |
| srcintf | src_endpoint.interface_uid | |
| srcintfrole | src_endpoint.interface_name | |
| srcname | src_endpoint.name | |
| srcmac | src_endpoint.mac | |
| srccountry | src_endpoint.location.country | |
| dstip | dst_endpoint.ip | |
| dstport | dst_endpoint.port | |
| dstintf | dst_endpoint.interface_uid | |
| dstintfrole | dst_endpoint.interface_name | |
| dstname | dst_endpoint.name | |
| dstmac | dst_endpoint.mac | |
| dstcountry | dst_endpoint.location.country | |
| proto | connection_info.protocol_num | Use IANA decimal (6=TCP, 17=UDP, 1=ICMP) |
| service | connection_info.protocol_name | |
| app | app_name | |
| appcat | connection_info.app_category | Or unmapped.appcat |
| action | action, action_id | See action_id table above |
| action | disposition, disposition_id | See disposition_id table above |
| policyid | policy.uid | Cast to string |
| poluuid | policy.uuid | |
| policytype | policy.type | |
| sentbyte | traffic.bytes_out | |
| rcvdbyte | traffic.bytes_in | |
| sentpkt | traffic.packets_out | |
| rcvdpkt | traffic.packets_in | |
| duration | duration | |
| sessionid | session.uid | Cast to string |
| trandisp | unmapped.trandisp | |
| transip | unmapped.transip | NAT source IP |
| transport | unmapped.transport | NAT source port |
| user | actor.user.name | |
| group | actor.user.groups[].name | |
| devtype | src_endpoint.type | |
| osname | src_endpoint.os.name | |
| utmaction | unmapped.utmaction | |
| utmref | unmapped.utmref | |
| vd | unmapped.vd | Virtual domain |

---

## Group 2: DNS

**FortiOS source:** `type="utm"`, `subtype="dns"` (subtypes: dns-query, dns-response)
**Log count:** 14 log IDs
**Master schema ref:** `fortios.md` → `## DNS`

### OCSF Mapping

| OCSF Class | class_uid | Key |
|------------|-----------|-----|
| DNS Activity | 4003 | `dns_activity` |

### Activity ID

| FortiOS eventtype | activity_id | Name | type_uid |
|-------------------|-------------|------|----------|
| dns-query | 1 | Query | 400301 |
| dns-response | 2 | Response | 400302 |

### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| qname | query.hostname | DNS query name |
| qtype | query.type | DNS query type |
| qclass | query.class | DNS query class |
| ipaddr | answers[].rdata | Resolved IP |
| srcip | src_endpoint.ip | |
| dstip | dst_endpoint.ip | DNS server |
| action | action, action_id | |
| cat | unmapped.cat | FortiGuard category number |
| catdesc | unmapped.catdesc | FortiGuard category name |
| botnetdomain | unmapped.botnetdomain | |
| botnetip | unmapped.botnetip | |

---

## Group 3: Web Filter

**FortiOS source:** `type="utm"`, `subtype="webfilter"`
**Log count:** 15 log IDs
**Master schema ref:** `fortios.md` → `## Webfilter`

### OCSF Mapping

| OCSF Class | class_uid | Key |
|------------|-----------|-----|
| Web Resources Activity | 6001 | `web_resources_activity` |

### Activity ID

| FortiOS action | activity_id | Name | type_uid |
|----------------|-------------|------|----------|
| blocked | 2 | Read | 600102 |
| passthrough, allow | 2 | Read | 600102 |
| monitor | 2 | Read | 600102 |

> Web filter logs always represent a URL access attempt (Read). The action outcome maps to `disposition_id`, not `activity_id`.

### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| url | web_resources[].url_string | |
| hostname | web_resources[].url.hostname | |
| cat | web_resources[].labels[].value | FortiGuard category number |
| catdesc | web_resources[].desc | FortiGuard category description |
| reqtype | unmapped.reqtype | direct, referral, etc. |
| referralurl | http_request.referrer | |
| httpmethod | http_request.http_method | |
| agent | http_request.user_agent | |
| profile | policy.name | Webfilter profile name |
| msg | message | |
| action | disposition, disposition_id | |
| direction | unmapped.direction | |
| eventtype | unmapped.eventtype | ftgd_blk, ftgd_allow, urlfilter, etc. |
| forwardedfor | http_request.x_forwarded_for | Extended logging |
| rawdata | unmapped.rawdata | Extended logging headers |
| banword | unmapped.banword | Banned word match |

---

## Group 4: Detection Findings (UTM Security)

**FortiOS source:** `type="utm"` with subtypes: `virus`, `ips`, `anomaly`, `app-ctrl`, `dlp`, `file-filter`, `virtual-patch`, `waf`, `casb`
**Log count:** ~130 log IDs across 9 subtypes
**Master schema ref:** `fortios.md` → `## Anomaly`, `## IPS`, `## Virus`, `## APP-CTRL`, `## DLP`, `## FILE-FILTER`, `## virtual-patch`, `## WAF`, `## casb`

### OCSF Mapping

| OCSF Class | class_uid | Key |
|------------|-----------|-----|
| Detection Finding | 2004 | `detection_finding` |

### Activity ID

All UTM detection logs use `activity_id = 1` (Create) — every log represents a new finding.
`type_uid = 200401`

### Key Field Mapping (common across all UTM subtypes)

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| attack | finding_info.title | IPS/anomaly attack name |
| attackid | finding_info.uid | Cast to string |
| severity | finding_info.src_url | Or severity → severity_id |
| msg | message | |
| action | disposition, disposition_id | pass→Allowed(1), block→Blocked(2), reset→Reset(21) |
| ref | finding_info.src_url | FortiGuard reference URL |
| crscore | risk_score | Threat weight score |
| crlevel | risk_level | Threat weight level |
| profile | policy.name | UTM profile name |
| subtype | finding_info.types[] | "virus", "ips", "anomaly", etc. |
| eventtype | finding_info.analytic.type | signature, botnet, anomaly, etc. |

### Subtype-Specific Fields

#### virus

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| virus | evidences[].name | Virus/malware name |
| virusid | evidences[].uid | |
| dtype | unmapped.dtype | Detection type |
| quarskip | unmapped.quarskip | |
| filename | file.name | |
| filesize | file.size | |
| filetype | file.type_id | |
| filehash | file.hashes[].value | |
| url | evidences[].src_url | |

#### ips

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| attack | finding_info.title | Signature name |
| attackid | finding_info.uid | |
| severity | severity_id | Map: critical→5, high→4, medium→3, low→2, info→1 |

#### anomaly

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| attack | finding_info.title | Anomaly type |
| count | count | Event count |

#### app-ctrl

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| app | finding_info.title | Application name |
| appcat | finding_info.types[] | Application category |
| applist | policy.name | App control profile |
| appid | finding_info.uid | |
| apprisk | risk_level | |

#### dlp

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| filteridx | finding_info.uid | |
| filtername | finding_info.title | |
| filtertype | finding_info.types[] | |
| filtercat | finding_info.analytic.category | |
| dlpextra | unmapped.dlpextra | |
| filename | file.name | |
| filesize | file.size | |
| filetype | file.type_id | |

#### waf

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| ruledata | finding_info.title | |
| ruleid | finding_info.uid | |

---

## Group 5: Email

**FortiOS source:** `type="utm"`, `subtype="emailfilter"`
**Log count:** 5 log IDs
**Master schema ref:** `fortios.md` → `## EmailFilter`

### OCSF Mapping

| OCSF Class | class_uid | Key |
|------------|-----------|-----|
| Email Activity | 4009 | `email_activity` |

### Activity ID

| FortiOS eventtype | activity_id | type_uid |
|-------------------|-------------|----------|
| spam, bannedword, email, webmail | 3 | 400903 |

> Use activity_id=3 (Scan) — FortiOS inspects email in transit.

### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| from | email.from | Sender |
| to | email.to[] | Recipient(s) |
| subject | email.subject | |
| sender | email.from | |
| recipient | email.to[] | |
| action | disposition, disposition_id | |

---

## Group 6: SSH

**FortiOS source:** `type="utm"`, `subtype="ssh"`
**Log count:** 4 log IDs (ssh-command, ssh-channel, ssh-hostkey, ssh-unsupport-proto)
**Master schema ref:** `fortios.md` → `## SSH`

### OCSF Mapping

| OCSF Class | class_uid | Key |
|------------|-----------|-----|
| SSH Activity | 4007 | `ssh_activity` |

### Activity ID

| FortiOS eventtype | activity_id | type_uid |
|-------------------|-------------|----------|
| ssh-command | 6 | 400706 |
| ssh-channel | 1 | 400701 |
| ssh-hostkey | 99 | 400799 |
| ssh-unsupport-proto | 4 | 400704 |

### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| action | action, action_id, disposition, disposition_id | |
| login | actor.user.name | SSH login name |

---

## Group 7: Other UTM / Network Fallback

**FortiOS source:** `type="utm"` with subtypes: `ssl`, `icap`, `voip`, `gtp`, `forti-switch`, `debug`
**Master schema ref:** `fortios.md` → `## SSL`, `## ICAP`, `## VoIP`, `## GTP`, `## FORTI-SWITCH`, `## Debug`

### OCSF Mapping

| FortiOS subtype | OCSF Class | class_uid | Key | Notes |
|-----------------|------------|-----------|-----|-------|
| ssl | Network Activity | 4001 | `network_activity` | SSL inspection/anomaly events |
| icap | Network Activity | 4001 | `network_activity` | ICAP request/response |
| voip | Network Activity | 4001 | `network_activity` | VoIP session events |
| gtp | Network Activity | 4001 | `network_activity` | GTP tunnel events |
| forti-switch | Network Activity | 4001 | `network_activity` | Switch flow logs |
| debug | Network Activity | 4001 | `network_activity` | Debug output (low priority) |

Use `activity_id=6` (Traffic) for most; use `action_id` / `disposition_id` to capture allow/block/detect.

---

## Group 8: Event Logs

Event logs are the most diverse category. The `subtype` field determines the OCSF class.

### Group 8a: Authentication & User (`subtype="user"` and admin login events)

**FortiOS source:** `type="event"`, `subtype="user"` (54 log IDs) + system admin login IDs (32001-32003, 32005-32007, 32021, 32024)
**Master schema ref:** `fortios.md` → `## Event` (search by logid)

#### OCSF Mapping

| OCSF Class | class_uid | Key | Condition |
|------------|-----------|-----|-----------|
| Authentication | 3002 | `authentication` | Login/logout/auth events |

#### Activity ID

| FortiOS Event | activity_id | Name | type_uid |
|---------------|-------------|------|----------|
| Admin login success/fail (32001, 32002) | 1 | Logon | 300201 |
| Admin logout (32003) | 2 | Logoff | 300202 |
| FSSO logon (38031) | 1 | Logon | 300201 |
| FSSO logoff (38032) | 2 | Logoff | 300202 |
| RADIUS/TACACS auth (38400-38500 range) | 1 | Logon | 300201 |
| VPN user auth | 1 | Logon | 300201 |
| FortiToken push (32160, 32161) | 99 | Other | 300299 |

#### Key Field Mapping

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| user | actor.user.name | |
| group | actor.user.groups[].name | |
| srcip | src_endpoint.ip | Client IP |
| action | status_id | success→1, fail→2 |
| msg | message | |
| logdesc | status_detail | |
| method | auth_protocol | e.g., "ssh", "https" |
| profile | policy.name | Auth profile |
| reason | status_detail | Failure reason |

#### Log ID Ranges for Admin Auth

| logid | Meaning |
|-------|---------|
| 32001 | Admin login successful |
| 32002 | Admin login failed |
| 32003 | Admin logout |
| 32005 | Admin override VDOM |
| 32021 | Admin login disabled |
| 32024 | Admin password expired |

### Group 8b: System Events (`subtype="system"`)

**FortiOS source:** `type="event"`, `subtype="system"` (628 log IDs minus auth = ~619)
**Master schema ref:** `fortios.md` → `## Event` (search by logid)

System events split across several OCSF classes based on the nature of the event:

#### Sub-dispatch by logid range

| logid Range | Count | Nature | OCSF Class | class_uid | Key | activity_id |
|-------------|-------|--------|------------|-----------|-----|-------------|
| 32099-32104 | 6 | Config change | Entity Management | 3004 | `entity_management` | 3 (Update) |
| 32109-32119 | ~10 | Signature/DB update | Application Lifecycle | 6002 | `application_lifecycle` | 8 (Update) |
| 32103 | 1 | Firmware update | Application Lifecycle | 6002 | `application_lifecycle` | 8 (Update) |
| 32138 | 1 | Reboot | Application Lifecycle | 6002 | `application_lifecycle` | 5 (Restart) |
| 20203-20204 | 2 | Daemon start/stop | Application Lifecycle | 6002 | `application_lifecycle` | 3/4 (Start/Stop) |
| 32009 | 1 | System start | Application Lifecycle | 6002 | `application_lifecycle` | 3 (Start) |
| 32129-32132 | 4 | User/guest CRUD | Entity Management | 3004 | `entity_management` | 1/3/4 (Create/Update/Delete) |
| 32022, 32035 | 2 | VDOM enable/disable | Entity Management | 3004 | `entity_management` | 8/9 (Enable/Disable) |
| 20101-20142 | ~41 | License expiry | Entity Management | 3004 | `entity_management` | 99 (Other) |
| 22011-22023 | ~12 | Resource conserve | Application Lifecycle | 6002 | `application_lifecycle` | 99 (Other) |
| 26001-26012 | 12 | DHCP | DHCP Activity | 4004 | `dhcp_activity` | See below |
| 22105-22120 | ~19 | Hardware alerts | Detection Finding | 2004 | `detection_finding` | 1 (Create) |
| All others | ~500+ | Operational/info | Entity Management | 3004 | `entity_management` | 99 (Other) |

#### DHCP Events (logid 26001-26012)

| logid | FortiOS Meaning | OCSF activity_id | Name | type_uid |
|-------|-----------------|-------------------|------|----------|
| 26001 | DHCP Ack | 5 | Ack | 400405 |
| 26002 | DHCP Release | 7 | Release | 400407 |
| 26003 | DHCP Stats | 99 | Other | 400499 |
| 26004 | DHCP Client Lease | 5 | Ack | 400405 |
| 26011 | DHCPv6 Reply | 5 | Ack | 400405 |
| 26012 | DHCPv6 Release | 7 | Release | 400407 |

#### Config Change Key Fields

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| cfgpath | entity.data | Configuration path |
| cfgobj | entity.name | Object modified |
| cfgattr | entity.data | Attributes changed |
| action | activity_id | See table above |
| user | actor.user.name | Admin who made change |

### Group 8c: VPN (`subtype="vpn"`)

**FortiOS source:** `type="event"`, `subtype="vpn"` (78 log IDs)
**Master schema ref:** `fortios.md` → `## Event` (search by logid 23101-23103, 37xxx, 41xxx)

#### OCSF Mapping

| Event Type | OCSF Class | class_uid | Key | activity_id |
|------------|------------|-----------|-----|-------------|
| Tunnel up/down (23101-23103) | Tunnel Activity | 4014 | `tunnel_activity` | 1 (Open) / 2 (Close) |
| IPsec negotiate (37124) | Tunnel Activity | 4014 | `tunnel_activity` | 1 (Open) |
| Certificate lifecycle (41986) | Entity Management | 3004 | `entity_management` | 3 (Update) |
| SSL VPN auth (default) | Authentication | 3002 | `authentication` | 1 (Logon) |

#### Key Field Mapping (Tunnel Activity)

| FortiOS Field | OCSF Path | Notes |
|---------------|-----------|-------|
| tunneltype | connection_info.protocol_name | IPsec, SSL, etc. |
| tunnelip | dst_endpoint.ip | Remote tunnel IP |
| remip | dst_endpoint.ip | Remote peer IP (fallback) |
| remport | dst_endpoint.port | Remote peer port |
| locip | src_endpoint.ip | Local tunnel IP |
| locport | src_endpoint.port | Local port |
| action | activity_id | tunnel-up→Open(1), tunnel-down→Close(2) |
| vpntunnel | connection_info.uid | Tunnel name |
| logdesc | protocol_name | Derived: "IPSec" or "SSL" from logdesc keywords |
| (static) | tunnel_type_id | 0 (Unknown) |
| outintf | unmapped.outintf | Outbound interface |

### Group 8d: HA (`subtype="ha"`)

**FortiOS source:** `type="event"`, `subtype="ha"` (37 log IDs)
**Master schema ref:** `fortios.md` → `## Event` (search by logid 35xxx)

#### OCSF Mapping

| OCSF Class | class_uid | Key | activity_id |
|------------|-----------|-----|-------------|
| Application Lifecycle | 6002 | `application_lifecycle` | 99 (Other) |

### Group 8e: Operational Events

**FortiOS source:** `type="event"`, subtypes: `sdwan`, `router`, `endpoint`, `connector`, `wanopt`, `fortiextender`, `telemetry`, `security-rating`, `cifs-auth-fail`, `rest-api`, `webproxy`, `web-svc`
**Master schema ref:** `fortios.md` → `## Event`

| FortiOS subtype | OCSF Class | class_uid | Key | Notes |
|-----------------|------------|-----------|-----|-------|
| sdwan | Network Activity | 4001 | `network_activity` | SD-WAN SLA/link events, activity_id=6 |
| router | Network Activity | 4001 | `network_activity` | BGP/OSPF state changes, activity_id=99 |
| endpoint | Detection Finding | 2004 | `detection_finding` | FortiClient events, activity_id=1 |
| rest-api | API Activity | 6003 | `api_activity` | REST API calls |
| connector | Entity Management | 3004 | `entity_management` | Connector state changes |
| Others | Entity Management | 3004 | `entity_management` | Default fallback, activity_id=99 |

---

## type_uid Quick Reference

`type_uid = class_uid * 100 + activity_id`

| Use Case | class_uid | activity_id | type_uid | Label |
|----------|-----------|-------------|----------|-------|
| Traffic allowed/close | 4001 | 2 | 400102 | Network Activity: Close |
| Traffic denied | 4001 | 5 | 400105 | Network Activity: Refuse |
| Traffic stats | 4001 | 6 | 400106 | Network Activity: Traffic |
| HTTP transaction | 4002 | 3 | 400203 | HTTP Activity: Get |
| DNS query | 4003 | 1 | 400301 | DNS Activity: Query |
| DNS response | 4003 | 2 | 400302 | DNS Activity: Response |
| DHCP ack | 4004 | 5 | 400405 | DHCP Activity: Ack |
| DHCP release | 4004 | 7 | 400407 | DHCP Activity: Release |
| SSH open | 4007 | 1 | 400701 | SSH Activity: Open |
| Email scan | 4009 | 3 | 400903 | Email Activity: Scan |
| UTM detection | 2004 | 1 | 200401 | Detection Finding: Create |
| Admin login | 3002 | 1 | 300201 | Authentication: Logon |
| Admin logout | 3002 | 2 | 300202 | Authentication: Logoff |
| Config change | 3004 | 3 | 300403 | Entity Management: Update |
| User create | 3004 | 1 | 300401 | Entity Management: Create |
| System start | 6002 | 3 | 600203 | Application Lifecycle: Start |
| Firmware update | 6002 | 8 | 600208 | Application Lifecycle: Update |
| System reboot | 6002 | 5 | 600205 | Application Lifecycle: Restart |
| Web filter access | 6001 | 2 | 600102 | Web Resources Activity: Read |
| REST API call | 6003 | 2 | 600302 | API Activity: Read |

---

## Common Object Patterns

These OCSF object structures are reused across all groups. Build helper functions for each.

### network_endpoint (src_endpoint / dst_endpoint)

```
{
  ip       = srcip/dstip,
  port     = srcport/dstport,
  mac      = srcmac/dstmac,
  name     = srcname/dstname,
  interface_uid  = srcintf/dstintf,
  interface_name = srcintfrole/dstintfrole,
  location = { country = srccountry/dstcountry },
  os       = { name = osname },           -- src only
  type     = devtype                       -- src only
}
```

### connection_info

```
{
  protocol_num  = proto,                   -- IANA decimal
  protocol_name = service,
  direction_id  = direction → 1 (Inbound) / 2 (Outbound)
}
```

### metadata (all events)

```
{
  version     = "1.6.0",
  product     = { vendor_name = "Fortinet", name = "FortiGate", version = devid },
  log_name    = type .. ":" .. subtype,
  log_version = "7.6.6",
  original_time = date .. "T" .. time .. tz
}
```

### actor (auth/config events)

```
{
  user = {
    name   = user,
    groups = { { name = group } }
  },
  session = {
    uid = sessionid
  }
}
```

### finding_info (detection findings)

```
{
  uid       = attackid or filteridx (string),
  title     = attack or filtername or virus or app,
  types     = { subtype },
  analytic  = { type = eventtype },
  src_url   = ref
}
```

---

## Execution Flow Summary

```
parseFortiOSLog(raw)
  ├── type="traffic"
  │   ├── subtype="http-transaction" → buildHTTPActivity(4002)
  │   └── *                          → buildNetworkActivity(4001)
  ├── type="utm"
  │   ├── subtype="dns"              → buildDNSActivity(4003)
  │   ├── subtype="webfilter"        → buildWebResourcesActivity(6001)
  │   ├── subtype="emailfilter"      → buildEmailActivity(4009)
  │   ├── subtype="ssh"              → buildSSHActivity(4007)
  │   ├── subtype in {virus,ips,anomaly,app-ctrl,dlp,
  │   │    file-filter,virtual-patch,waf,casb}
  │   │                              → buildDetectionFinding(2004)
  │   └── subtype in {ssl,icap,voip,gtp,forti-switch,debug}
  │                                  → buildNetworkActivity(4001)
  └── type="event"
      ├── subtype="user"             → buildAuthentication(3002)
      ├── subtype="vpn"
      │   ├── logid 23101-23103      → buildTunnelActivity(4014)
      │   ├── logid 37124            → buildTunnelActivity(4014)
      │   ├── logid 41986            → buildEntityManagement(3004)
      │   └── default                → buildAuthentication(3002)
      ├── subtype="system"
      │   ├── logid 32001-32003      → buildAuthentication(3002)
      │   ├── logid 32099-32104      → buildEntityManagement(3004) [config]
      │   ├── logid 32109-32119      → buildAppLifecycle(6002) [updates]
      │   ├── logid 26001-26012      → buildDHCPActivity(4004)
      │   ├── logid 32138            → buildAppLifecycle(6002) [reboot]
      │   ├── logid 32009            → buildAppLifecycle(6002) [start]
      │   └── *                      → buildEntityManagement(3004) [fallback]
      ├── subtype="ha"               → buildAppLifecycle(6002)
      ├── subtype="sdwan"            → buildNetworkActivity(4001)
      ├── subtype="router"           → buildNetworkActivity(4001)
      ├── subtype="rest-api"         → buildAPIActivity(6003)
      ├── subtype="endpoint"         → buildDetectionFinding(2004)
      └── *                          → buildEntityManagement(3004) [fallback]
```
