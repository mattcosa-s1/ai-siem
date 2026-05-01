# FortiOS 7.6.6 Log Reference — Extended (Wireless & Switch-Controller)

> These Event log subtypes were separated from the primary reference for context efficiency.
> They cover infrastructure management events (wireless AP/radio, FortiSwitch provisioning)
> rather than core security telemetry.

## Event — wireless

### 43520 - LOG_ID_EVENT_WIRELESS_SYS

**Meaning:** Wireless system activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43521 - LOG_ID_EVENT_WIRELESS_ROGUE

**Meaning:** Rogue AP activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43522 - LOG_ID_EVENT_WIRELESS_WTP

**Meaning:** Physical AP activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43524 - LOG_ID_EVENT_WIRELESS_STA

**Meaning:** Wireless client activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43525 - LOG_ID_EVENT_WIRELESS_ONWIRE

**Meaning:** Rogue AP on wire | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                   int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43526 - LOG_ID_EVENT_WIRELESS_WTPR

**Meaning:** Physical AP radio activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43527 - LOG_ID_EVENT_WIRELESS_ROGUE_CFG

**Meaning:** Rogue AP status configured | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43528 - LOG_ID_EVENT_WIRELESS_WTPR_ERROR

**Meaning:** Physical AP radio error activity | **Type:** Event | **Category:** wireless | **Severity:** Error

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43529 - LOG_ID_EVENT_WIRELESS_CLB

**Meaning:** Wireless client load balancing | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43530 - LOG_ID_EVENT_WIRELESS_WIDS_WL_BRIDGE

**Meaning:** Wireless bridge intrusion detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43531 - LOG_ID_EVENT_WIRELESS_WIDS_BR_DEAUTH

**Meaning:** Wireless broadcasting deauthentication detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43532 - LOG_ID_EVENT_WIRELESS_WIDS_NL_PBRESP

**Meaning:** Wireless null SSID probe response detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43533 - LOG_ID_EVENT_WIRELESS_WIDS_MAC_OUI

**Meaning:** Wireless invalid MAC OUI detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| invalidmac | Detected MAC address with invalid OUI | string | 17 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43534 - LOG_ID_EVENT_WIRELESS_WIDS_LONG_DUR

**Meaning:** Wireless long duration attack detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| duration | Duration of the last threatening packed captured from TA | uint32 | 10 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43535 - LOG_ID_EVENT_WIRELESS_WIDS_WEP_IV

**Meaning:** Wireless Weak WEP IV detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |
| weakwepiv | Weak Wep Initiation Vector | string | 8 |

### 43536 - LOG_ID_EVENT_WIRELESS_WIDS_GENERAL

**Meaning:** Wireless threat detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43537 - LOG_ID_EVENT_WIRELESS_WIDS_RISKY_

**Meaning:** Wireless risky_encryption detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43538 - LOG_ID_EVENT_WIRELESS_WIDS_VALID_STA_

**Meaning:** Wireless valid_client_misassoc detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43542 - LOG_ID_EVENT_WIRELESS_WIDS_EAPOL_FLOOD

**Meaning:** Wireless EAPOL packet flooding detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eapolcnt | The count of EAPOL packets | uint32 | 10 |
| eapoltype | The packet type of EAPOL | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43544 - LOG_ID_EVENT_WIRELESS_WIDS_MGMT_FLOOD

**Meaning:** Wireless management flooding detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| mgmtcnt | The number of unauthorized client flooding managemet frames | uint32 | 10 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43546 - LOG_ID_EVENT_WIRELESS_WIDS_SPOOF_

**Meaning:** Wireless spoofed deauthentication detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43548 - LOG_ID_EVENT_WIRELESS_WIDS_ASLEAP

**Meaning:** Wireless Asleap attack detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ds | Direction with distribution system | string | 8 |
| encrypt | The packet is encrypted or not | uint8 | 3 |
| eventtime | Event time | uint64 | 20 |
| frametype | Frame Type | string | 32 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message | string | 4096 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rssi | The value of Received signal strength indicator | uint8 | 3 |
| seq | Sequence | string | 512 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| subtype | Log Subtype | string | 20 |
| tamac | The MAC address of Transmitter. If none, then Receiver | string | 17 |
| threattype | WIDS threat type | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43550 - LOG_ID_EVENT_WIRELESS_STA_LOCATE

**Meaning:** Wireless station presence detection | **Type:** Event | **Category:** wireless | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message noise                  WiFi signal noise level              int8        4 | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID signal                 The signal value of SSID or client   int8        4 | uint8 | 3 |
| sn | Serial Number | string | 64 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43551 - LOG_ID_EVENT_WIRELESS_WTP_JOIN

**Meaning:** Physical AP join | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43552 - LOG_ID_EVENT_WIRELESS_WTP_LEAVE

**Meaning:** Physical AP leave | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43553 - LOG_ID_EVENT_WIRELESS_WTP_FAIL

**Meaning:** Physical AP fail | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43554 - LOG_ID_EVENT_WIRELESS_WTP_UPDATE

**Meaning:** Physical AP update | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43555 - LOG_ID_EVENT_WIRELESS_WTP_RESET

**Meaning:** Physical AP reset | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43556 - LOG_ID_EVENT_WIRELESS_WTP_KICK

**Meaning:** Physical AP kick | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43557 - LOG_ID_EVENT_WIRELESS_WTP_ADD_FAILURE

**Meaning:** Physical AP add failure | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43558 - LOG_ID_EVENT_WIRELESS_WTP_CFG_ERR

**Meaning:** Physical AP config error | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43559 - LOG_ID_EVENT_WIRELESS_WTP_SN_MISMATCH

**Meaning:** Physical AP SN mismatch | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43560 - LOG_ID_EVENT_WIRELESS_SYS_AC_RESTARTED

**Meaning:** Wireless system restarted | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43561 - LOG_ID_EVENT_WIRELESS_SYS_AC_HOSTAPD_

**Meaning:** Wireless system hostapd up | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43562 - LOG_ID_EVENT_WIRELESS_SYS_AC_HOSTAPD_

**Meaning:** Wireless system hostapd down | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43563 - LOG_ID_EVENT_WIRELESS_ROGUE_DETECT

**Meaning:** Rogue AP detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43564 - LOG_ID_EVENT_WIRELESS_ROGUE_OFFAIR

**Meaning:** Rogue AP off air | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43565 - LOG_ID_EVENT_WIRELESS_ROGUE_ONAIR

**Meaning:** Rogue AP on air | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43566 - LOG_ID_EVENT_WIRELESS_ROGUE_OFFWIRE

**Meaning:** Rogue AP off wire | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43567 - LOG_ID_EVENT_WIRELESS_FAKEAP_DETECT

**Meaning:** Fake AP detected | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43568 - LOG_ID_EVENT_WIRELESS_FAKEAP_ONAIR

**Meaning:** Fake AP on air | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43569 - LOG_ID_EVENT_WIRELESS_ROGUE_SUPPRESSED

**Meaning:** Rogue AP suppressed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43570 - LOG_ID_EVENT_WIRELESS_ROGUE_

**Meaning:** Rogue AP unsuppressed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43571 - LOG_ID_EVENT_WIRELESS_ROGUE_DETECT_CHG

**Meaning:** Rogue AP change detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43572 - LOG_ID_EVENT_WIRELESS_STA_ASSO

**Meaning:** Wireless client associated | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client   int8        4 | string | 40 |
| sn | Serial Number snr                                                       int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43573 - LOG_ID_EVENT_WIRELESS_STA_AUTH

**Meaning:** Wireless client authenticated | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43574 - LOG_ID_EVENT_WIRELESS_STA_DASS

**Meaning:** Wireless client disassociated | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43575 - LOG_ID_EVENT_WIRELESS_STA_DAUT

**Meaning:** Wireless client deauthenticated | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43576 - LOG_ID_EVENT_WIRELESS_STA_IDLE

**Meaning:** Wireless client idle | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43577 - LOG_ID_EVENT_WIRELESS_STA_DENY

**Meaning:** Wireless client denied | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                       int8        4 | string | 36 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43578 - LOG_ID_EVENT_WIRELESS_STA_KICK

**Meaning:** Wireless client kicked | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43579 - LOG_ID_EVENT_WIRELESS_STA_IP

**Meaning:** Wireless client IP assigned | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43580 - LOG_ID_EVENT_WIRELESS_STA_LEAVE_WTP

**Meaning:** Wireless client left WTP | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| security | Security signal               The signal value of SSID or client     int8        4 | string | 40 |
| sn | Serial Number snr                                                         int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43581 - LOG_ID_EVENT_WIRELESS_STA_WTP_DISCONN

**Meaning:** Wireless client disconnected by WTP | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client            int8        4 | string | 40 |
| sn | Serial Number snr                                                                int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43582 - LOG_ID_EVENT_WIRELESS_ROGUE_CFG_

**Meaning:** Rogue AP status configured as unclassified | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43583 - LOG_ID_EVENT_WIRELESS_ROGUE_CFG_

**Meaning:** Rogue AP status configured as accepted | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43584 - LOG_ID_EVENT_WIRELESS_ROGUE_CFG_ROGUE

**Meaning:** Rogue AP status configured as rogue | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43585 - LOG_ID_EVENT_WIRELESS_ROGUE_CFG_

**Meaning:** Rogue AP status configured as suppressed | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43586 - LOG_ID_EVENT_WIRELESS_WTPR_DARRP_CHAN

**Meaning:** Physical AP radio DARRP channel change | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43587 - LOG_ID_EVENT_WIRELESS_WTPR_DARRP_START

**Meaning:** Physical AP radio DARRP start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43588 - LOG_ID_EVENT_WIRELESS_WTPR_OPER_CHAN

**Meaning:** Physical AP radio operation channel change | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43589 - LOG_ID_EVENT_WIRELESS_WTPR_RADAR

**Meaning:** Physical AP radio radar detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43590 - LOG_ID_EVENT_WIRELESS_WTPR_NOL

**Meaning:** Physical AP radio channel removed from NOL | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43591 - LOG_ID_EVENT_WIRELESS_WTPR_COUNTRY_

**Meaning:** Physical AP radio country config success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43592 - LOG_ID_EVENT_WIRELESS_WTPR_OPER_

**Meaning:** Physical AP radio operation country | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43593 - LOG_ID_EVENT_WIRELESS_WTPR_CFG_

**Meaning:** Physical AP radio config TX power | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43594 - LOG_ID_EVENT_WIRELESS_WTPR_OPER_

**Meaning:** Physical AP radio operation TX power | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43595 - LOG_ID_EVENT_WIRELESS_CLB_DENY

**Meaning:** Wireless client load balancing denied | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43596 - LOG_ID_EVENT_WIRELESS_CLB_RETRY

**Meaning:** Wireless client load balancing retry | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43597 - LOG_ID_EVENT_WIRELESS_WTP_ADD

**Meaning:** Physical AP add | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43598 - LOG_ID_EVENT_WIRELESS_WTP_ADD_XSS

**Meaning:** Physical AP add XSS | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43599 - LOG_ID_EVENT_WIRELESS_WTP_DEL

**Meaning:** Physical AP delete | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43600 - LOG_ID_EVENT_WIRELESS_WTPR_DARRP_STOP

**Meaning:** Physical AP radio DARRP stop | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43601 - LOG_ID_EVENT_WIRELESS_STA_CAP_SIGNON

**Meaning:** Wireless station sign on | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43602 - LOG_ID_EVENT_WIRELESS_STA_CAP_SIGNON_

**Meaning:** Wireless station sign on success | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client            int8        4 | string | 40 |
| sn | Serial Number snr                                                                int8        4 | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43603 - LOG_ID_EVENT_WIRELESS_STA_CAP_SIGNON_

**Meaning:** Wireless station sign on failed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client           int8        4 | string | 40 |
| sn | Serial Number snr                                                               int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43604 - LOG_ID_EVENT_WIRELESS_STA_CAP_EMAIL_

**Meaning:** Captive-portal VAP e-mail collect request sent | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43605 - LOG_ID_EVENT_WIRELESS_STA_CAP_EMAIL_

**Meaning:** Captive-portal VAP e-mail collect success | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| sn | Serial Number snr                                                               int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43606 - LOG_ID_EVENT_WIRELESS_STA_CAP_EMAIL_

**Meaning:** Captive-portal VAP e-mail collect failed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client              int8        4 | string | 40 |
| sn | Serial Number snr                                                                  int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43607 - LOG_ID_EVENT_WIRELESS_STA_CAP_

**Meaning:** Captive-portal VAP disclaimer agreed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43608 - LOG_ID_EVENT_WIRELESS_STA_CAP_

**Meaning:** Captive-portal VAP disclaimer declined | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client           int8        4 | string | 40 |
| sn | Serial Number snr                                                               int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43609 - LOG_ID_EVENT_WIRELESS_WTPR_DARRP_

**Meaning:** DARRP optimization start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43610 - LOG_ID_EVENT_WIRELESS_WTPR_DARRP_

**Meaning:** DARRP optimization stop | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43611 - LOG_ID_EVENT_WIRELESS_SYS_AC_UP

**Meaning:** Wireless controller start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43612 - LOG_ID_EVENT_WIRELESS_SYS_AC_CFG_LOADED

**Meaning:** Wireless controller configuration loaded | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43613 - LOG_ID_EVENT_WIRELESS_WTP_ERR

**Meaning:** Physical AP error | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43614 - LOG_ID_EVENT_WIRELESS_DHCP_STAVATION

**Meaning:** DHCP Starvation detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| client_addr | Client address | string | 17 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| msg | Log Message | string | 4096 |
| sn | Serial Number | string | 64 |
| source_mac | The source MAC address of wifi station | string | 17 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vapmode | Virtual Access Point mode | string | 17 |
| vd | Virtual Domain Name | string | 32 |
| xid |  | uint32 | 10 |

### 43615 - LOG_ID_EVENT_WIRELESS_SYS_AC_IPSEC_FAIL

**Meaning:** Wireless controller IPsec setup failed | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43616 - LOG_ID_EVENT_WIRELESS_WTPR_NOL_ADD

**Meaning:** Physical AP radio NOL added | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43618 - LOG_ID_EVENT_WIRELESS_WTP_IMAGE_RC_

**Meaning:** Physical AP image receive success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43619 - LOG_ID_EVENT_WIRELESS_OFFENDINGAP_

**Meaning:** Offending AP detected | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43620 - LOG_ID_EVENT_WIRELESS_OFFENDINGAP_ONAIR

**Meaning:** Offending AP on air | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| age | Time in seconds - time passed since last seen | uint32 | 10 |
| apscan | The name of AP to detect rogue ap | string | 36 |
| apstatus | Rogue AP status like unclassify(0), rogue(1), accept(2), suppress(3) | uint8 | 3 |
| aptype | The AP type is Ad-hoc mode or regular AP mode | uint8 | 3 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| detectionmethod | Detection Method | string | 21 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| live | Time in seconds | uint32 | 10 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| manuf | Manufacturer name | string | 20 |
| msg | Log Message noise                WiFi signal noise level                                     int8        4 | string | 4096 |
| onwire | The rogue ap is onwire or not | string | 3 |
| radioband | The operating radio band | string | 64 |
| radioidclosest | The radio ID on the AP closest with the detected rogue ap | uint8 | 3 |
| radioiddetected | The radio ID on the AP which detected the rogue ap | uint8 | 3 |
| rate | WiFi band width rate | uint16 | 6 |
| snclosest | SN of the AP closest to the rogue AP | string | 36 |
| sndetected | SN of the AP which detected the rogue AP | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stacount | The count of wifi stations | uint32 | 10 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43621 - LOG_ID_EVENT_WIRELESS_WTP_DATA_CHAN_

**Meaning:** Wireless wtp data channel changed | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43622 - LOG_ID_EVENT_WIRELESS_WTP_VLAN_PROBE

**Meaning:** WTP is probing vlan | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43623 - LOG_ID_EVENT_WIRELESS_WTP_VLAN_MISSING

**Meaning:** VLAN not detected | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43624 - LOG_ID_EVENT_WIRELESS_WTP_VLAN_

**Meaning:** VLAN detected | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43625 - LOG_ID_EVENT_WIRELESS_STA_CAP_CMCC_

**Meaning:** Wireless station CMCC sign on success | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client          int8        4 | string | 40 |
| sn | Serial Number snr                                                              int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43626 - LOG_ID_EVENT_WIRELESS_STA_CAP_CMCC_

**Meaning:** Wireless station CMCC sign on failed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43627 - LOG_ID_EVENT_WIRELESS_STA_CAP_CMCC_

**Meaning:** Wireless station CMCC sign on timeout | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43628 - LOG_ID_EVENT_WIRELESS_STA_CAP_CMCC_

**Meaning:** Wireless station CMCC MAC auth success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number snr                                                                 int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43629 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_AUTH_

**Meaning:** Wireless client RADIUS authentication failure | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43630 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_AUTH_

**Meaning:** Wireless client RADIUS authentication success | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                           int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43631 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_AUTH_

**Meaning:** Wireless client RADIUS authentication server not responding | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43632 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_MAC_

**Meaning:** Wireless client RADIUS MAC authentication failure | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43633 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_MAC_

**Meaning:** Wireless client RADIUS MAC authentication success | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43634 - LOG_ID_EVENT_WIRELESS_STA_RADIUS_MAC_

**Meaning:** Wireless client RADIUS MAC authentication server not responding | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                          int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                              int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43635 - LOG_ID_EVENT_WIRELESS_STA_OKC_NO_MATCH

**Meaning:** Wireless client authenticates through OKC failed with no match | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43636 - LOG_ID_EVENT_WIRELESS_STA_OKC_LOCAL_

**Meaning:** Wireless client authenticates through local OKC success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                   int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                       int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43637 - LOG_ID_EVENT_WIRELESS_STA_OKC_INTER_AC_

**Meaning:** Wireless client authenticates through inter AC OKC success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                          int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43638 - LOG_ID_EVENT_WIRELESS_STA_OKC_INTER_AP_

**Meaning:** Wireless client authenticates through inter AP OKC success | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client               int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                   int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43639 - LOG_ID_EVENT_WIRELESS_STA_FT_INVALID_

**Meaning:** Wireless client sent invalid FT action request | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43640 - LOG_ID_EVENT_WIRELESS_STA_FT_INVALID_

**Meaning:** Wireless client sent invalid FT auth request | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43641 - LOG_ID_EVENT_WIRELESS_STA_FT_INVALID_

**Meaning:** Wireless client sent invalid FT reassociation request | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43642 - LOG_ID_EVENT_WIRELESS_STA_FT_ACTION_REQ

**Meaning:** Wireless client sent FT action reqeust | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43643 - LOG_ID_EVENT_WIRELESS_STA_FT_ACTION_

**Meaning:** FT action response was sent to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43644 - LOG_ID_EVENT_WIRELESS_STA_FT_AUTH_REQ

**Meaning:** Wireless client sent FT auth request | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                             int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43645 - LOG_ID_EVENT_WIRELESS_STA_FT_AUTH_RESP

**Meaning:** FT auth response was sent to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43646 - LOG_ID_EVENT_WIRELESS_STA_FT_REASSOC_

**Meaning:** Wireless client sent FT reassociation request | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43647 - LOG_ID_EVENT_WIRELESS_STA_FT_REASSOC_

**Meaning:** FT reassociation response was sent to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                 int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                     int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43648 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Wireless client 4 way handshake failed with invalid 2/4 message | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                       int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                           int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43649 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Wireless client 4 way handshake failed with invalid 4/4 message | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43650 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** AP sent 1/4 message of 4 way handshake to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                     int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                         int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43651 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Wireless client sent 2/4 message of 4 way handshake | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                     int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                         int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43652 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** AP sent 3/4 message of 4 way handshake to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43653 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Wireless client sent 4/4 message of 4 way handshake | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client               int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                   int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43654 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** AP sent 1/2 message of group key handshake to wireless client | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                   int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                       int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43655 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Wireless client sent 2/2 message of group key handshake | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43656 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** Max sta count limit for the PSK was reached | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43657 - LOG_ID_EVENT_WIRELESS_STA_ASSOC_FAIL

**Meaning:** Wireless station association failed | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                        int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                            int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43658 - LOG_ID_EVENT_WIRELESS_STA_DHCP_NO_RESP

**Meaning:** Wireless station DHCP process failed with no server response | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43659 - LOG_ID_EVENT_WIRELESS_STA_DHCP_DIFF_

**Meaning:** Another DHCP server sent DHCP offer to wireless station | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43660 - LOG_ID_EVENT_WIRELESS_STA_DHCP_NO_ACK

**Meaning:** No DHCP ACK from server | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43661 - LOG_ID_EVENT_WIRELESS_STA_DHCP_NAK

**Meaning:** DHCP server sent DHCP NAK | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43662 - LOG_ID_EVENT_WIRELESS_STA_DHCP_DUP_IP

**Meaning:** IP offered has been used by another wireless station | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43663 - LOG_ID_EVENT_WIRELESS_STA_DHCP_

**Meaning:** Wireless station sent DHCP DISCOVER | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43664 - LOG_ID_EVENT_WIRELESS_STA_DHCP_OFFER

**Meaning:** DHCP server sent DHCP OFFER | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43665 - LOG_ID_EVENT_WIRELESS_STA_DHCP_DECLINE

**Meaning:** Wireless station sent DHCP DECLINE | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43666 - LOG_ID_EVENT_WIRELESS_STA_DHCP_REQUEST

**Meaning:** Wireless station sent DHCP REQUEST | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43667 - LOG_ID_EVENT_WIRELESS_STA_DHCP_ACK

**Meaning:** DHCP server sent DHCP ACK | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43668 - LOG_ID_EVENT_WIRELESS_STA_DHCP_RELEASE

**Meaning:** Wireless station sent DHCP RELEASE | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43669 - LOG_ID_EVENT_WIRELESS_STA_DHCP_INFORM

**Meaning:** Wireless station sent DHCP INFORM | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43670 - LOG_ID_EVENT_WIRELESS_STA_DHCP_SELF_

**Meaning:** Wireless station is using self-assigned IP | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43671 - LOG_ID_EVENT_WIRELESS_STA_DNS_NO_RESP

**Meaning:** Wireless station DNS process failed with no server response | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43672 - LOG_ID_EVENT_WIRELESS_STA_DNS_SERVER_

**Meaning:** Wireless station DNS process failed due to server failure | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43673 - LOG_ID_EVENT_WIRELESS_STA_DNS_NO_

**Meaning:** Wireless station DNS process failed due to non-existing domain | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43674 - LOG_ID_EVENT_WIRELESS_STA_WPA_KRACK_

**Meaning:** Wireless station WPA key reinstallation attack on FT reassociation | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43675 - LOG_ID_EVENT_WIRELESS_STA_AUTH_REQ

**Meaning:** Authentication request from wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43676 - LOG_ID_EVENT_WIRELESS_STA_AUTH_RESP

**Meaning:** Authentication response to wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43677 - LOG_ID_EVENT_WIRELESS_STA_ASSOC_REQ

**Meaning:** Association request from wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43678 - LOG_ID_EVENT_WIRELESS_STA_REASSOC_REQ

**Meaning:** Reassociation request from wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43679 - LOG_ID_EVENT_WIRELESS_STA_ASSOC_RESP

**Meaning:** Association response to wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43680 - LOG_ID_EVENT_WIRELESS_STA_REASSOC_RESP

**Meaning:** Reassociation response to wireless station | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43681 - LOG_ID_EVENT_WIRELESS_STA_PROBE_REQ

**Meaning:** Probe request from wireless station | **Type:** Event | **Category:** wireless | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal                 The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                   int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43682 - LOG_ID_EVENT_WIRELESS_STA_PROBE_RESP

**Meaning:** Probe response to wireless station | **Type:** Event | **Category:** wireless | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal                 The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                   int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43683 - LOG_ID_EVENT_WIRELESS_BLE_DEV_LOCATE

**Meaning:** Wireless ble dev detection | **Type:** Event | **Category:** wireless | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message signal               The signal value of SSID or client           int8        4 | string | 4096 |
| sn | Serial Number | string | 64 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43684 - LOG_ID_EVENT_WIRELESS_ADDRGRP_

**Meaning:** Wireless addrgrp duplicate mac | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| addrgrp |  | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43685 - LOG_ID_EVENT_WIRELESS_ADDRGRP_ADDR_

**Meaning:** Wireless addrgrp address apply | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| addrgrp |  | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43686 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_

**Meaning:** PSK is out of any valid schedules | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43687 - LOG_ID_EVENT_WIRELESS_STA_WL_BRIDGE_

**Meaning:** Traffic stats for station with bridge wlan | **Type:** Event | **Category:** wireless | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| nextstat | Time interval in seconds for the next statistics | uint32 | 10 |
| rcvdbyte | Received Bytes | uint64 | 20 |
| sn | Serial Number snr                                                       int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43688 - LOG_ID_EVENT_WIRELESS_APCFG_RECEIVE

**Meaning:** FortiAP receives the apcfg | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43689 - LOG_ID_EVENT_WIRELESS_APCFG_VALIDATING

**Meaning:** FortiAP is validating the apcfg | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43690 - LOG_ID_EVENT_WIRELESS_APCFG_APPLY

**Meaning:** FortiAP applies the apcfg | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43691 - LOG_ID_EVENT_WIRELESS_APCFG_REJECT

**Meaning:** FortiAP rejects the apcfg | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43692 - LOG_ID_EVENT_WIRELESS_WTPR_ANTENNA_

**Meaning:** Defect antenna detection | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43693 - LOG_ID_EVENT_WIRELESS_STA_WNM_ACTION_

**Meaning:** AP sent WNM action BSTM request | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43694 - LOG_ID_EVENT_WIRELESS_STA_WNM_ACTION_

**Meaning:** Wireless client sent WNM action BSTM response accept | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client                int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                    int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43695 - LOG_ID_EVENT_WIRELESS_STA_WNM_ACTION_

**Meaning:** Wireless client sent WNM action BSTM response reject | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43696 - LOG_ID_EVENT_WIRELESS_WTPR_DRMA_START

**Meaning:** Physical AP radio DRMA start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43697 - LOG_ID_EVENT_WIRELESS_WTPR_DRMA_STOP

**Meaning:** Physical AP radio DRMA stop | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43698 - LOG_ID_EVENT_WIRELESS_WTPR_DRMA_MODE

**Meaning:** Physical AP radio DRMA mode | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43699 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_SOLICIT

**Meaning:** Wireless station sent DHCP6 SOLICIT | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43700 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_

**Meaning:** DHCP6 server sent DHCP6 ADVERTISE | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43701 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_REQUEST

**Meaning:** Wireless station sent DHCP6 REQUEST | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43702 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_

**Meaning:** Wireless station sent DHCP6 CONFIRM | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43703 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_RENEW

**Meaning:** Wireless station sent DHCP6 RENEW | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43704 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_REPLY

**Meaning:** DHCP6 server sent DHCP6 REPLY | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43705 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_RELEASE

**Meaning:** Wireless station sent DHCP6 RELEASE | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mac | MAC Address | string | 17 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43706 - LOG_ID_EVENT_WIRELESS_STA_DHCP6_

**Meaning:** DHCP6 server sent DHCP6 RECONFIGURE | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43707 - LOG_ID_EVENT_WIRELESS_WTPR_SSID_UP

**Meaning:** Physical AP radio ssid up | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43708 - LOG_ID_EVENT_WIRELESS_WTPR_SSID_DOWN

**Meaning:** Physical AP radio ssid down | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43709 - LOG_ID_EVENT_WIRELESS_STA_DHCP_

**Meaning:** Wireless client denied by DHCP enforcement for using static IP address | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| server | AD server FQDN or IP | string | 64 |
| sn | Serial Number | string | 64 |
| snprev |  | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43710 - LOG_ID_EVENT_WIRELESS_SAM_IPERF

**Meaning:** SAM iperf test result | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43711 - LOG_ID_EVENT_WIRELESS_SAM_PING

**Meaning:** SAM ping test result | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43712 - LOG_ID_EVENT_WIRELESS_SAM_AUTH_FAILED

**Meaning:** AP as station failed in SAM authentication | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43713 - LOG_ID_EVENT_WIRELESS_SAM_CWP_AUTH_

**Meaning:** AP as station failed in SAM CWP authentication | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bssid | Basic service set ID | string | 17 |
| channel | Channel | uint8 | 3 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43714 - LOG_ID_EVENT_WIRELESS_WTP_PARTIAL_

**Meaning:** AP received partial login password | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| sn | Serial Number | string | 64 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43715 - LOG_ID_EVENT_WIRELESS_WTPR_BSS_COLOR_

**Meaning:** AP radio BSS color collision detected. | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43716 - LOG_ID_EVENT_WIRELESS_ADDRGRP_MAX_FW_

**Meaning:** Wireless addrgrp reached firewal address maximum number | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| addrgrp |  | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43717 - LOG_ID_EVENT_WIRELESS_STA_L3R_REHOME

**Meaning:** Wireless client layer3 roaming rehome | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| msg | Log Message | string | 4096 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client         int8        4 | string | 40 |
| sn | Serial Number snr                                                             int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43719 - LOG_ID_EVENT_WIRELESS_STA_PROBE_LOW_

**Meaning:** Probe request from wireless station failed due to low rssi | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security | string | 40 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43720 - LOG_ID_EVENT_WIRELESS_FIPS

**Meaning:** Physical AP FIPS activity | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43721 - LOG_ID_EVENT_WIRELESS_STA_WPA_MSG_EXT_

**Meaning:** External MPSK authentication result | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| remotewtptime | The time of AP when client trying to connect | string | 32 |
| security | Security signal               The signal value of SSID or client             int8        4 | string | 40 |
| sn | Serial Number | string | 64 |
| snprev | snr                                                                 int8        4 | string | 36 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |

### 43723 - LOG_ID_EVENT_WIRELESS_SYS_AC_DOWN

**Meaning:** Wireless controller down | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43724 - LOG_ID_EVENT_WIRELESS_WTPR_SKIP_CAC

**Meaning:** AP radio DFS Channel CAC skip, Zero-Wait-DFS. | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43725 - LOG_ID_EVENT_WIRELESS_WTPR_AI_DARRP_

**Meaning:** Physical AP radio AI DARRP support start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43726 - LOG_ID_EVENT_WIRELESS_WTPR_AI_DARRP_

**Meaning:** Physical AP radio AI DARRP support stop | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43727 - LOG_ID_EVENT_WIRELESS_WTPR_AI_DARRP_

**Meaning:** Physical AP radio DARRP channel change from AI | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| ssid | WiFi Service Set ID | string | 33 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name Log Messages | string | 32 |

### 43728 - LOG_ID_EVENT_WIRELESS_WTPR_AI_DARRP_

**Meaning:** DARRP optimization request from AI start | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| bandwidth | Bandwidth | string | 42 |
| cfgtxpower | Config TX power | uint32 | 10 |
| channel | Channel | uint8 | 3 |
| configcountry | Config Country | string | 4 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| msg | Log Message | string | 4096 |
| opercountry | The name of operating country on a AP | string | 4 |
| operdrmamode |  | string | 10 |
| opertxpower | The value of operating tx power | uint32 | 10 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| slctdrmamode |  | string | 10 |
| sn | Serial Number | string | 64 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43729 - LOG_ID_EVENT_WIRELESS_WTP_AUTO_GEN_

**Meaning:** Wireless controller certificate auto generation succeed | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43730 - LOG_ID_EVENT_WIRELESS_WTP_AUTO_GEN_

**Meaning:** Wireless controller certificate auto generation failed | **Type:** Event | **Category:** wireless | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| eventtime | Event time | uint64 | 20 |
| ip |  | ip | 39 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| meshmode | Mesh mode | string | 19 |
| msg | Log Message | string | 4096 |
| profile | Profile Name | string | 64 |
| reason | Reason | string | 256 |
| snmeshparent | SN of the mesh parent | string | 36 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| vd | Virtual Domain Name | string | 32 |

### 43731 - LOG_ID_EVENT_WIRELESS_STA_USERGROUP_

**Meaning:** Wireless station usergroup updated | **Type:** Event | **Category:** wireless | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action | Policy Action | string | 65 |
| ap | Access Point | string | 36 |
| authserver | Remote Authentication server | string | 64 |
| channel | Channel | uint8 | 3 |
| date | Date | string | 10 |
| devid | Device ID | string | 16 |
| encryption | The encryption type of detected rogue AP | string | 12 |
| eventtime | Event time | uint64 | 20 |
| group | User group Name | string | 512 |
| level | Log Level | string | 11 |
| logdesc | Log Description | string | 4096 |
| logid | Log ID | string | 10 |
| mpsk | Multiple pre-shared keys | string | 33 |
| radioband | The operating radio band | string | 64 |
| radioid | The operating radio ID | uint8 | 3 |
| reason | Reason | string | 256 |
| security | Security signal               The signal value of SSID or client   int8        4 | string | 40 |
| sn | Serial Number snr                                                       int8        4 | string | 64 |
| srcip | Source IP | ip | 39 |
| ssid | WiFi Service Set ID | string | 33 |
| stamac | The MAC address of wifi station | string | 17 |
| subtype | Log Subtype | string | 20 |
| time | Time | string | 8 |
| trafficmode |  | string | 8 |
| type | Log Type | string | 16 |
| tz | Time zone | string | 5 |
| user | User name of authenticated user | string | 256 |
| vap | Virtual Access Point | string | 36 |
| vd | Virtual Domain Name | string | 32 |


## Event — switch-controller

### 22850 - LOG_ID_USER_QUARANTINE_MAC_ADD

**Meaning:** User quarantine MAC added | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22851 - LOG_ID_USER_QUARANTINE_MAC_DELETE

**Meaning:** User quarantine MAC deleted | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22852 - LOG_ID_USER_QUARANTINE_MAC_BOUNCE_

**Meaning:** User quarantine MAC bounce port hit | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22853 - LOG_ID_USER_QUARANTINE_MAC_BOUNCE_

**Meaning:** User quarantine MAC bounce port miss | **Type:** Event | **Category:** switch-controller | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 22861 - LOG_ID_FLPOLD_NAC_ADD

**Meaning:** NAC device addition | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22862 - LOG_ID_FLPOLD_NAC_DELETE

**Meaning:** NAC device deletion | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22863 - LOG_ID_FLPOLD_NAC_MODIFY

**Meaning:** NAC device modify | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22864 - LOG_ID_FLPOLD_DPP_ADD

**Meaning:** DPP device addition | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22865 - LOG_ID_FLPOLD_DPP_DELETE

**Meaning:** DPP device deletion | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22866 - LOG_ID_FLPOLD_DPP_MODIFY

**Meaning:** DPP device modify | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22867 - LOG_ID_FLPOLD_DPP_INTF_TAGS_ADD

**Meaning:** DPP interface tags add | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 22868 - LOG_ID_FLPOLD_DPP_INTF_TAGS_DELETE

**Meaning:** DPP interface tags delete | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22869 - LOG_ID_FLPOLD_NAC_DYNAMIC_ADDRESS_ADD

**Meaning:** NAC device dynamic address addition | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22870 - LOG_ID_FLPOLD_NAC_DYNAMIC_ADDRESS_

**Meaning:** NAC device dynamic address deletion | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22871 - LOG_ID_FLPOLD_NAC_MAC_CACHE_SYNC

**Meaning:** NAC MAC cache sync | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22872 - LOG_ID_FLPOLD_NAC_MAX_ERROR

**Meaning:** NAC device Max Limit Error | **Type:** Event | **Category:** switch-controller | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22873 - LOG_ID_FLPOLD_DPP_MAX_ERROR

**Meaning:** DPP device Max Limit Error | **Type:** Event | **Category:** switch-controller | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22874 - LOG_ID_FLTUND_NEW_CONN

**Meaning:** Switch-controller FortilinkLite new connection | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 22875 - LOG_ID_FLTUND_CONN_DOWN

**Meaning:** Switch-controller FortilinkLite connection down | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22876 - LOG_ID_FLTUND_RCV_BOOTSTRAP

**Meaning:** Switch-controller FortilinkLite received bootstrap | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22877 - LOG_ID_FLTUND_CONN_ONLINE

**Meaning:** Switch-controller FortilinkLite tunnel online | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22878 - LOG_ID_FLTUND_CONN_OFFLINE

**Meaning:** Switch-controller FortilinkLite tunnel offline | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22890 - LOG_ID_FORTILINKD

**Meaning:** Switch-Controller Daemon Log (Notification) | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 22891 - LOG_ID_FLCFGD_SYNC_ERROR

**Meaning:** Switch-Controller Switch Sync Error | **Type:** Event | **Category:** switch-controller | **Severity:** Error

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22892 - LOG_ID_FLCFGD_SYNC_COMPLETE

**Meaning:** Switch-Controller Switch Sync Complete | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22893 - LOG_ID_FLCFGD_SYNC_STATE

**Meaning:** Switch-Controller Switch Sync State | **Type:** Event | **Category:** switch-controller | **Severity:** Debug

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22894 - LOG_ID_FLCFGD_UPGRADE_ERROR

**Meaning:** Switch-Controller Switch Upgrade Error | **Type:** Event | **Category:** switch-controller | **Severity:** Error

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22895 - LOG_ID_FLCFGD_UPGRADE_STATUS

**Meaning:** Switch-Controller Switch Upgrade Status | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22896 - LOG_ID_FORTILINKD_CRITICAL

**Meaning:** Switch-Controller Daemon Log (Critical) | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22897 - LOG_ID_FORTILINKD_SPLIT_PORT_INFO

**Meaning:** Switch-controller split-port related configuration change detected | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 22900 - LOG_ID_CAPUTP_SESSION

**Meaning:** CAPUTP session status | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| vd |  | string | 32 |

### 22904 - LOG_ID_CAPUTP_SESSION_NOTIF

**Meaning:** CAPUTP session status notification | **Type:** Event | **Category:** switch-controller | **Severity:** Notice

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| srcip |  | ip | 39 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32569 - LOG_ID_FSW_SWITCH_LOG_EVENT

**Meaning:** Switch-Controller | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| action |  | string | 65 |
| cert | Certificate | string | 36 |
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| eventtype |  | string | 48 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| reason | Reason | string | 256 |
| sn |  | string | 64 |
| srcip |  | ip | 39 |
| srcmac |  | string | 17 |
| status | Status | string | 23 |
| subtype |  | string | 20 |
| switchaclid |  | uint32 | 10 |
| switchautoip |  | ip | 39 |
| switchinterface |  | string | 16 |
| switchl2capacity |  | uint32 | 10 |
| switchl2count |  | uint32 | 10 |
| switchmirrorsession |  | string | 16 |
| switchphysicalport |  | string | 16 |
| switchsysteminterface |  | string | 16 |
| switchtrunk |  | string | 16 |
| switchtrunkinterface |  | string | 16 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |
| vlan | Log Messages | uint32 | 10 |

### 32601 - LOG_ID_FGT_SWITCH_LOG_DISCOVER

**Meaning:** Switch-Controller discovered | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32602 - LOG_ID_FGT_SWITCH_LOG_AUTH

**Meaning:** Switch-Controller authorized | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32603 - LOG_ID_FGT_SWITCH_LOG_DEAUTH

**Meaning:** Switch-Controller deauthorized | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32604 - LOG_ID_FGT_SWITCH_LOG_DELETE

**Meaning:** Switch-Controller deleted | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 32605 - LOG_ID_FGT_SWITCH_LOG_TUNNEL_UP

**Meaning:** Switch-Controller Tunnel Up | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32606 - LOG_ID_FGT_SWITCH_LOG_TUNNEL_DOWN

**Meaning:** Switch-Controller Tunnel Down | **Type:** Event | **Category:** switch-controller | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32607 - LOG_ID_FGT_SWITCH_PUSH_IMAGE

**Meaning:** Image push to FortiSwitch | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32608 - LOG_ID_FGT_SWITCH_STAGE_IMAGE

**Meaning:** Image stage to FortiSwitch | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32609 - LOG_ID_FGT_SWITCH_DISABLE_DISCOVERY

**Meaning:** Disable FortiSwitch Discovery | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 32610 - LOG_ID_FGT_SWITCH_LOG_WARNING

**Meaning:** Switch-Controller warning | **Type:** Event | **Category:** switch-controller | **Severity:** Warning

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32611 - LOG_ID_FGT_SWITCH_EXPORT_POOL

**Meaning:** Export port to pool | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32612 - LOG_ID_FGT_SWITCH_EXPORT_VDOM

**Meaning:** Export port to vdom | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32613 - LOG_ID_FGT_SWITCH_REQUEST_PORT

**Meaning:** Request port from pool | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32614 - LOG_ID_FGT_SWITCH_RETURN_PORT

**Meaning:** Return port to pool | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32615 - LOG_ID_FGT_SWITCH_MAC_ADD

**Meaning:** FortiSwitch MAC add | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32616 - LOG_ID_FGT_SWITCH_MAC_DEL

**Meaning:** FortiSwitch MAC delete | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32617 - LOG_ID_FGT_SWITCH_MAC_MOVE

**Meaning:** FortiSwitch MAC move | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32618 - LOG_ID_FGT_SWITCH_EXPORT_POOL_UNDO

**Meaning:** Revert export port to pool | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32619 - LOG_ID_FGT_SWITCH_EXPORT_VDOM_UNDO

**Meaning:** Revert export port to vdom | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd | Log Messages | string | 32 |

### 32620 - LOG_ID_FGT_SWITCH_GROUP_ADD_MEMBER

**Meaning:** Add switch as member to switch group | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32621 - LOG_ID_FGT_SWITCH_GROUP_DEL_MEMBER

**Meaning:** Delete switch as member from switch group | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32622 - LOG_ID_FGT_SWITCH_FORTILINK_CONNECTED

**Meaning:** Switch connected via Fortilink | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32623 - LOG_ID_FGT_SWITCH_LOCATION_CHANGE

**Meaning:** Fortilink Switch location change | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32624 - LOG_ID_FGT_SWITCH_NEW_PEER_DETECT

**Meaning:** Fortilink Switch new peer detected | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32625 - LOG_ID_FGT_SWITCH_IMG_VERIFICATION

**Meaning:** Fortilink Switch image verification | **Type:** Event | **Category:** switch-controller | **Severity:** Information

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32693 - LOG_ID_FGT_SWITCH_GROUP_SWC

**Meaning:** FortiSwitch switch controller | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32694 - LOG_ID_FGT_SWITCH_GROUP_POE

**Meaning:** FortiSwitch PoE | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32695 - LOG_ID_FGT_SWITCH_GROUP_LINK

**Meaning:** FortiSwitch link | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32696 - LOG_ID_FGT_SWITCH_GROUP_STP

**Meaning:** FortiSwitch spanning Tree | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32697 - LOG_ID_FGT_SWITCH_GROUP_SWITCH

**Meaning:** FortiSwitch switch | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgpath |  | string | 128 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32698 - LOG_ID_FGT_SWITCH_GROUP_ROUTER

**Meaning:** FortiSwitch router | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgtid |  | uint32 | 10 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

### 32699 - LOG_ID_FGT_SWITCH_GROUP_SYSTEM

**Meaning:** FortiSwitch system | **Type:** Event | **Category:** switch-controller | **Severity:** Critical

| Field | Description | Type | Length |
|-------|-------------|------|--------|
| cfgattr |  | string | 4096 |
| cfgobj |  | string | 256 |
| cfgpath |  | string | 128 |
| date |  | string | 10 |
| devid |  | string | 16 |
| eventtime |  | uint64 | 20 |
| level |  | string | 11 |
| logdesc |  | string | 4096 |
| logid |  | string | 10 |
| msg |  | string | 4096 |
| name |  | string | 128 |
| sn |  | string | 64 |
| subtype |  | string | 20 |
| time |  | string | 8 |
| type |  | string | 16 |
| tz |  | string | 5 |
| ui |  | string | 64 |
| user |  | string | 256 |
| vd |  | string | 32 |

