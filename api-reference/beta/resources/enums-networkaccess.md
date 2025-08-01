---
title: "Network Access enum values"
description: "Microsoft Graph Network Access enumeration values"
author: "sisharm"
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: enumTypes
ms.date: 04/24/2025
---

# Network Access Enum Values

Namespace: microsoft.graph.networkaccess

### accessType values

|Member|
|:---|
|quickAccess|
|privateAccess|
|unknownFutureValue|
|appAccess|

### aggregationFilter values 

|Member|
|:---|
|transactions|
|users|
|devices|
|unknownFutureValue|
|bytesSent|
|bytesReceived|
|totalBytes|

### applicationProtocol values 

|Member|
|:---|
|http|
|https|
|smb|
|rdp|
|ftp|
|ssh|
|sap|
|unknownFutureValue|

### bandwidthCapacityInMbps values 

|Member|
|:---|
|mbps250|
|mbps500|
|mbps750|
|mbps1000|
|unknownFutureValue|

### connectivityState values 

|Member|
|:---|
|pending|
|connected|
|inactive|
|error|
|unknownFutureValue|

### connectionStatus values

|Member|
|:---|
|open|
|active|
|closed|
|unknownFutureValue|

### deviceCategory values 

|Member|
|:---|
|client|
|branch|
|unknownFutureValue|
|remoteNetwork|

### deviceVendor values 

|Member|
|:---|
|barracudaNetworks|
|checkPoint|
|ciscoMeraki|
|citrix|
|fortinet|
|hpeAruba|
|netFoundry|
|nuage|
|openSystems|
|paloAltoNetworks|
|riverbedTechnology|
|silverPeak|
|vmWareSdWan|
|versa|
|other|
|unknownFutureValue|

### dhGroup values 

|Member|
|:---|
|dhGroup14|
|dhGroup24|
|dhGroup2048|
|ecp256|
|ecp384|
|unknownFutureValue|

### filteringPolicyAction values 

|Member|
|:---|
|block|
|allow|
|unknownFutureValue|
|bypass|
|alert|

### forwardingCategory values 

|Member|
|:---|
|default|
|optimized|
|allow|
|unknownFutureValue|

### forwardingRuleAction values 

|Member|
|:---|
|bypass|
|forward|
|unknownFutureValue|

### httpMethod values

|Member|
|:---|
|get|
|post|
|put|
|delete|
|head|
|options|
|connect|
|patch|
|trace|
|unknownFutureValue|

### ikeEncryption values 

|Member|
|:---|
|aes128|
|aes192|
|aes256|
|gcmAes128|
|gcmAes256|
|unknownFutureValue|

### ikeIntegrity values 

|Member|
|:---|
|sha256|
|sha384|
|gcmAes128|
|gcmAes256|
|unknownFutureValue|

### ipSecEncryption values 

|Member|
|:---|
|none|
|gcmAes128|
|gcmAes192|
|gcmAes256|
|unknownFutureValue|

### ipSecIntegrity values 

|Member|
|:---|
|gcmAes128|
|gcmAes192|
|gcmAes256|
|sha256|
|unknownFutureValue|

### networkDestinationType values 

|Member|
|:---|
|url|
|fqdn|
|ipAddress|
|ipRange|
|ipSubnet|
|webCategory|
|unknownFutureValue|

### networkingProtocol values 

|Member|
|:---|
|ip|
|icmp|
|igmp|
|ggp|
|ipv4|
|tcp|
|pup|
|udp|
|idp|
|ipv6|
|ipv6RoutingHeader|
|ipv6FragmentHeader|
|ipSecEncapsulatingSecurityPayload|
|ipSecAuthenticationHeader|
|icmpV6|
|ipv6NoNextHeader|
|ipv6DestinationOptions|
|nd|
|raw|
|ipx|
|spx|
|spxII|
|unknownFutureValue|

### onboardingStatus values 

|Member|
|:---|
|offboarded|
|offboardingInProgress|
|onboardingInProgress|
|onboarded|
|onboardingErrorOccurred|
|offboardingErrorOccurred|
|unknownFutureValue|

### networkTrafficOperationStatus values

|Member|
|:---|
|success|
|failure|
|unknownFutureValue|

### pfsGroup values 

|Member|
|:---|
|none|
|pfs1|
|pfs2|
|pfs14|
|pfs24|
|pfs2048|
|pfsmm|
|ecp256|
|ecp384|
|unknownFutureValue|

### redundancyTier values 

|Member|
|:---|
|noRedundancy|
|zoneRedundancy|
|unknownFutureValue|

### region values 

|Member|
|:---|
|eastUS|
|eastUS2|
|westUS|
|westUS2|
|westUS3|
|centralUS|
|northCentralUS|
|southCentralUS|
|northEurope|
|westEurope|
|franceCentral|
|germanyWestCentral|
|switzerlandNorth|
|ukSouth|
|canadaEast|
|canadaCentral|
|southAfricaWest|
|southAfricaNorth|
|uaeNorth|
|australiaEast|
|westCentralUS|
|centralIndia|
|southEastAsia|
|swedenCentral|
|southIndia|
|australiaSouthEast|
|koreaCentral|
|polandCentral|
|brazilSouth|
|japanEast|
|japanWest|
|koreaSouth|
|italyNorth|
|franceSouth|
|israelCentral|
|unknownFutureValue|

### securityRuleStatus values 

|Member|
|:---|
|enabled|
|disabled|
|reportOnly|
|unknownFutureValue|

### status values 

|Member|
|:---|
|enabled|
|disabled|
|unknownFutureValue|

### threatIntelligenceAction values 

|Member|
|:---|
|allow|
|block|
|unknownFutureValue|

### threatIntelligenceSeverity values 

|Member|
|:---|
|low|
|medium|
|high|
|unknownFutureValue|

### trafficForwardingType values 

|Member|
|:---|
|m365|
|internet|
|private|
|unknownFutureValue|

### trafficType values 

|Member|
|:---|
|internet|
|private|
|microsoft365|
|all|
|unknownFutureValue|
|microsoft|

### userType values 

|Member|
|:---|
|member|
|guest|
|unknownFutureValue|

### remoteNetworkStatus values 

|Member|
|:---|
|tunnelDisconnected|
|tunnelConnected|
|bgpDisconnected|
|bgpConnected|
|remoteNetworkAlive|
|unknownFutureValue|

### remoteNetworkHealthAliveStatus values 

|Member|
|:---|
|alive|
|unknownFutureValue|

### usageStatus values 

|Member|
|:---|
|member|
|guest|
|unknownFutureValue|

### policyRule values  

|Member|
|:---|
|forwardingRule|
|filteringRule|
|unknownFutureValue|

### tlsCertificateStatus values 

|Member|
|:---|
|csrGenerated|
|enrolling|
|active|
|unknownFutureValue|

### tlsInspectionAction values 

|Member|
|:---|
|bypass|
|inspect|
|unknownFutureValue|

### securityRuleStatus values 

|Member|
|:---|
|enabled|
|disabled|
|reportOnly|
|unknownFutureValue|


<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.networkaccess"
}
-->
