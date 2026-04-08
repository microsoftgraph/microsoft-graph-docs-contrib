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
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcregiongroup.md)|The logical geographic group this region belongs to. The possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `norway`, `switzerland`, `southKorea`, `middleEast`, `mexico`, `australasia`, `europe`, `singapore`, `hongKong`, `ireland`, `sweden`, `poland`, `italy`, `spain`, `netherlands`, `brazil`, `israel`, `automatic`, `indonesia`, `taiwan`, `malaysia`, `newZealand`, `austria`, `denmark`, `belgium`, `kenya`. The default value is `automatic`.|
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
