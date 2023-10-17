---
title: "destination resource type"
description: "unique network destination."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# destination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

unique network destination.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceCount|Int32|Count of unique devices that were seen.|
|fqdn|String|"FQDN" stands for "Fully Qualified Domain Name" and refers to a complete and unambiguous domain name that specifies an object's precise location in the Domain Name System (DNS) hierarchy, often used for network addressing and identification.|
|ip|String|"IP" stands for "Internet Protocol" and refers to a set of rules that govern how data is sent and received over the internet. An "IP address" is a numerical label assigned to devices in a network, serving as a unique identifier for communication within that network.|
|lastAccessDateTime|DateTimeOffset|last Access DateTime.|
|networkingProtocol|microsoft.graph.networkaccess.networkingProtocol|Set of communication rules and conventions that govern data transmission between devices in a network.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`.|
|port|Int32|Numeric identifier associated with a specific endpoint in a network. Ports are used to distinguish different services or processes running on a single device, allowing data to be directed to the appropriate application or service within a networked environment.|
|trafficType|microsoft.graph.networkaccess.trafficType|traffic classification.The possible values are: `internet`, `private`, `microsoft365`, `all`.|
|transactionCount|Int32|count of transactions.|
|userCount|Int32|Count of unique Azure Active Directoy users that were seen.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

