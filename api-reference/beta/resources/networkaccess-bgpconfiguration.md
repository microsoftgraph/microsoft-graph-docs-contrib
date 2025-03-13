---
title: "bgpConfiguration resource type"
description: "The border gateway protocol (BGP) specifies the IP address and ASN to route traffic from a link to the edge."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# bgpConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The border gateway protocol (BGP) specifies the IP address and ASN to route traffic from a link to the edge.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddress|String|Specifies the BGP IP address.| 
|localIpAddress|String| Specifies the BGP IP address of peer (Microsoft, in this case).| 
|peerIpAddress |String| Specifies the BGP IP address of customer's on-premise VPN router configuration.|
|asn           |Int32| Specifies the ASN of the BGP.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

