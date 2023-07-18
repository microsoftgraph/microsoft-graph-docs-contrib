---
title: "redundancyConfiguration resource type"
description: "The redundancy option for a device link specifies the specific details and configuration settings related to redundancy. "
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# redundancyConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The redundancy option for a device link specifies the specific details and configuration settings related to redundancy. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|redundancyTier|microsoft.graph.networkaccess.redundancyTier|Specifies the Device link SKU	.The possible values are: `noRedundancy`, `zoneRedundancy`.|
|zoneLocalIpAddress|String|Indicate the specific IP address used for establishing the Border Gateway Protocol (BGP) connection with Microsoft's network.|

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

