---
title: "destination resource type"
description: "A unique network destination."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# destination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unique network destination.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int32|The number of unique devices that were seen.|
|fqdn|String|The fully qualified domain name (FQDN) of the destination.|
|ip|String|The internet protocol (IP) used to access the destination.|
|lastAccessDateTime|DateTimeOffset|The most recent access DateTime.|
|networkingProtocol|microsoft.graph.networkaccess.networkingProtocol|The set of communication rules and conventions that govern data transmission between devices in a network. The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, and `spxII`.|
|port|Int32|The numeric identifier that is associated with a specific endpoint in a network.|
|trafficType|microsoft.graph.networkaccess.trafficType|The traffic classification. The possible values are `internet`, `private`, `microsoft365`, and `all`.|
|transactionCount|Int32|The number of transactions.|
|userCount|Int32|The number of unique Microsoft Entra ID users that were seen.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.destination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.destination",
  "fqdn": "String",
  "ip": "String",
  "port": "Integer",
  "networkingProtocol": "String",
  "trafficType": "String",
  "lastAccessDateTime": "String (timestamp)",
  "transactionCount": "Integer",
  "userCount": "Integer",
  "deviceCount": "Integer"
}
```

