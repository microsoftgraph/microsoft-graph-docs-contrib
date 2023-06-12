---
title: "redundancyConfiguration resource type"
description: "Specifies the details of redundancy option for the device link"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# redundancyConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the details of redundancy option for the device link


## Properties
|Property|Type|Description|
|:---|:---|:---|
|redundancyTier|microsoft.graph.networkaccess.redundancyTier|Specifies the Device link SKU	.The possible values are: `noRedundancy`, `zoneRedundancy`, `unknownFutureValue`.|
|zoneLocalIpAddress|String|Specifies the zone BGP IP address of peer (Microsoft, in this case)	|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.redundancyConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.redundancyConfiguration",
  "zoneLocalIpAddress": "String",
  "redundancyTier": "String"
}
```

