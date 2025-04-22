---
title: "discoveredApplicationSegmentReport resource type"
description: "Represents a report about application segments detected in network traffic through Global Secure Access services."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# discoveredApplicationSegmentReport resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a report about application segments detected in network traffic through Global Secure Access services.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessType|microsoft.graph.networkaccess.accessType|The type of access used to connect to this application segment. The possible values are: `quickAccess`, `privateAccess`, `unknownFutureValue`, `appAccess`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `appAccess`.|
|deviceCount|Int32|The number of unique devices that have accessed this application segment.|
|discoveredApplicationSegmentId|String|The unique identifier for this discovered application segment.|
|firstAccessDateTime|DateTimeOffset|The date and time when this application segment was first accessed.|
|fqdn|String|The fully qualified domain name associated with this application segment.|
|ip|String|The IP address associated with this application segment.|
|lastAccessDateTime|DateTimeOffset|The date and time when this application segment was last accessed.|
|port|Int32|The port number used to access this application segment.|
|totalBytesReceived|Int64|The total number of bytes received from this application segment.|
|totalBytesSent|Int64|The total number of bytes sent to this application segment.|
|transactionCount|Int32|The number of transactions recorded for this application segment.|
|transportProtocol|microsoft.graph.networkaccess.networkingProtocol|The transport protocol used to access this application segment. The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`.|
|userCount|Int32|The number of unique users who have accessed this application segment.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.discoveredApplicationSegmentReport"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.discoveredApplicationSegmentReport",
  "discoveredApplicationSegmentId": "String",
  "fqdn": "String",
  "ip": "String",
  "port": "Integer",
  "transportProtocol": "String",
  "accessType": "String",
  "firstAccessDateTime": "String (timestamp)",
  "lastAccessDateTime": "String (timestamp)",
  "transactionCount": "Integer",
  "userCount": "Integer",
  "deviceCount": "Integer",
  "totalBytesSent": "Integer",
  "totalBytesReceived": "Integer"
}
```