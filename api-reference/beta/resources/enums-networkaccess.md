---
title: "Network Access enum values"
description: "Microsoft Graph Network Access enumeration values"
author: "moti-ba"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: enumTypes
ms.date: 04/20/2025
---

# Network Access Enum Values

Namespace: microsoft.graph.networkaccess

### accessType values

|Member|Value|Description|
|:---|:---|:---|
|quickAccess|0|Describes quick access.|
|privateAccess|1|Describes application access.|
|unknownFutureValue|2|Reserved for future use.|
|appAccess|3|Describes application access.|

### aggregationFilter values 

|Member|Value|Description|
|:---|:---|:---|
|transactions|0|Filter by transactions.|
|users|1|Filter by users.|
|devices|2|Filter by devices.|
|unknownFutureValue|3|Reserved for future use.|
|bytesSent|4|Filter by bytes sent.|
|bytesReceived|5|Filter by bytes received.|
|totalBytes|6|Filter by total bytes.|

### applicationProtocol values 

|Member|Value|Description|
|:---|:---|:---|
|http|0|HTTP protocol.|
|https|1|HTTPS protocol.|
|smb|2|SMB protocol.|
|rdp|3|RDP protocol.|
|ftp|4|FTP protocol.|
|ssh|5|SSH protocol.|
|sap|6|SAP protocol.|
|unknownFutureValue|7|Reserved for future use.|
|dns|8|DNS request. *This value is deprecated and will be removed 2023-05-23.*|

### connectionStatus values

|Member|Value|Description|
|:---|:---|:---|
|open|0|Describes an open connection.|
|active|1|Describes an active connection.|
|closed|2|Describes a closed connection.|
|unknownFutureValue|3|Reserved for future use.|

### deviceCategory values 

|Member|Value|Description|
|:---|:---|:---|
|client|0|Client device.|
|branch|1|Branch device.|
|unknownFutureValue|2|Reserved for future use.|
|remoteNetwork|3|Remote network device.|

### filteringPolicyAction values

|Member|Value|Description|
|:---|:---|:---|
|block|0|Describes an action of blocking the traffic.|
|allow|1|Describes an action of allowing the traffic.|
|unknownFutureValue|2|Reserved for future use.|
|bypass|3|Describes an action of bypassing the traffic.|
|alert|4|Describes an action of raising an alert.|

### networkingProtocol values

|Member|Value|Description|
|:---|:---|:---|
|ip|0|IP protocol.|
|icmp|1|ICMP protocol.|
|igmp|2|IGMP protocol.|
|ggp|3|GGP protocol.|
|ipv4|4|IPv4 protocol.|
|tcp|6|TCP protocol.|
|pup|12|PUP protocol.|
|udp|17|UDP protocol.|
|idp|22|IDP protocol.|
|ipv6|41|IPv6 protocol.|
|ipv6RoutingHeader|43|IPv6 routing header.|
|ipv6FragmentHeader|44|IPv6 fragment header.|
|ipSecEncapsulatingSecurityPayload|50|IPSec encapsulating security payload.|
|ipSecAuthenticationHeader|51|IPSec authentication header.|
|icmpV6|58|ICMPv6 protocol.|
|ipv6NoNextHeader|59|IPv6 no next header.|
|ipv6DestinationOptions|60|IPv6 destination options.|
|nd|77|ND protocol.|
|raw|255|Raw protocol.|
|ipx|100|IPX protocol.|
|spx|1256|SPX protocol.|
|spxII|1257|SPXII protocol.|
|unknownFutureValue|1258|Reserved for future use.|

### networkTrafficOperationStatus values

|Member|Value|Description|
|:---|:---|:---|
|success|0|The operation completed successfully.|
|failure|1|The operation failed.|
|unknownFutureValue|2|Reserved for future use.|

### trafficType values

|Member|Value|Description|
|:---|:---|:---|
|internet|0|Internet traffic.|
|private|1|Private network traffic.|
|microsoft365|2|Microsoft 365 traffic.|
|all|3|All traffic types.|
|unknownFutureValue|4|Reserved for future use.|
|microsoft|5|Microsoft cloud traffic.|

### userType values

|Member|Value|Description|
|:---|:---|:---|
|member|0|User is a member of the tenant.|
|guest|1|User is a guest in the tenant.|
|unknownFutureValue|2|Reserved for future use.|

### alertType values

|Member|Value|Description|
|:---|:---|:---|
|unhealthyRemoteNetworks|0|Alert on unhealthy links.|
|unhealthyConnectors|1|Alert on unhealthy connectors.|
|deviceTokenInconsistency|2|Alert when a token is used in a different device than the original one used when it was issued.|
|crossTenantAnomaly|3|Alert that number of users that access external tenants increased significantly.|
|suspiciousProcess|4|Alert on anomaly in process name – alert when a new process is used to access destinations normally accessed from a different process.|
|threatIntelligenceTransactions|5|Alert when there are transactions detected by threat intelligence.|
|unknownFutureValue|6|Reserved for future use.|
|webContentBlocked|7|Alert when a destination has been blocked by GSA policy.|
|malware|8|Alert when transactions were blocked due to malware detection.|
|patientZero|9|Alert for patient-zero file detected post download.|
|dlp|10|Alert for Data Loss Prevention.|
|fallback|11|Alert for when malware/DLP scan fails. *This value is deprecated and will be removed 2025-04-01.*|

### alertSeverity values

|Member|Value|Description|
|:---|:---|:---|
|informational|0|Informational severity level.|
|low|1|Low severity level.|
|medium|2|Medium severity level.|
|high|3|High severity level.|
|unknownFutureValue|5|Reserved for future use.|

### malwareCategory values

|Member|Value|Description|
|:---|:---|:---|
|adware|0|Adware malware type.|
|backdoor|1|Backdoor malware type.|
|behavior|2|Behavior malware type.|
|bot|3|Bot malware type.|
|browserModifier|4|Browser modifier malware type.|
|constructor|5|Constructor malware type.|
|cryptojacking|6|Cryptojacking malware type.|
|ddos|7|DDoS malware type.|
|dropper|8|Dropper malware type.|
|dropperMalware|9|Dropper malware type.|
|exploit|10|Exploit malware type.|
|filelessMalware|11|Fileless malware type.|
|hackTool|12|Hack tool malware type.|
|hybridMalware|13|Hybrid malware type.|
|joke|14|Joke malware type.|
|keylogger|15|Keylogger malware type.|
|misleading|16|Misleading malware type.|
|monitoringTool|17|Monitoring tool malware type.|
|polymorphicMalware|18|Polymorphic malware type.|
|passwordStealer|19|Password stealer malware type.|
|program|20|Program malware type.|
|ransomware|21|Ransomware malware type.|
|remoteAccess|22|Remote access malware type.|
|rogue|23|Rogue malware type.|
|rootkit|24|Rootkit malware type.|
|settingsModifier|25|Settings modifier malware type.|
|softwareBundler|26|Software bundler malware type.|
|spammer|27|Spammer malware type.|
|spoofer|28|Spoofer malware type.|
|spyware|29|Spyware malware type.|
|tool|30|Tool malware type.|
|trojan|31|Trojan malware type.|
|trojanClicker|32|Trojan clicker malware type.|
|trojanDownloader|33|Trojan downloader malware type.|
|trojanNotifier|34|Trojan notifier malware type.|
|trojanProxy|35|Trojan proxy malware type.|
|trojanSpy|36|Trojan spy malware type.|
|virus|37|Virus malware type.|
|wiperMalware|38|Wiper malware type.|
|worm|39|Worm malware type.|
|unknownFutureValue|40|Reserved for future use.|

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.networkaccess"
}
-->
