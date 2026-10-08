---
title: "relatedDestination resource type"
description: "Represents a destination involved in a Global Secure Access alert."
author: "miritsadon"
ms.date: 04/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# relatedDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a destination involved in a Global Secure Access [alert](../resources/networkaccess-alert.md).

Inherits from [microsoft.graph.networkaccess.relatedResource](../resources/networkaccess-relatedresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|fqdn|String|Fully qualified domain name of the destination. Required.|
|ip|String|IP address of the destination. Required.|
|networkingProtocol|microsoft.graph.networkaccess.networkingProtocol|Protocol used to access the destination. Required. The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`.|
|port|Int32|Port number used to access the destination. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.relatedDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.relatedDestination",
  "fqdn": "String",
  "ip": "String",
  "port": "Integer",
  "networkingProtocol": "microsoft.graph.networkaccess.networkingProtocol"
}
```
