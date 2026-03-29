---
title: "cloudPcRegionGroupConfiguration resource type"
description: "Represents a region group configuration for the Microsoft-hosted network."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcRegionGroupConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a region group configuration for the Microsoft-hosted network.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|regionGroup|[cloudPcRegionGroup](../resources/enums.md#cloudpcregiongroup-values)|The logical geographic group this region belongs to. The possible values are: `automatic`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `norway`, `switzerland`, `southKorea`, `middleEast`, `mexico`, `unknownFutureValue`. The default value is `automatic`.|
|regions|String collection|The list of region names within the region group. The default value is `automatic`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcRegionGroupConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcRegionGroupConfiguration",
  "regionGroup": "String",
  "regions": ["String"]
}
```
