---
title: "bgpConfiguration resource type"
description: "The border gateway protocol specifies the IP address and ASN to route traffic from a link to the edge."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# bgpConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The border gateway protocol specifies the IP address and ASN to route traffic from a link to the edge.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|asn|Int64|Specifies the ASN of the BGP.|
|ipAddress|String|Specifies the BGP IP address of customer's on-premise VPN router configuration.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.bgpConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.bgpConfiguration",
  "ipAddress": "String",
  "asn": "Integer"
}
```

