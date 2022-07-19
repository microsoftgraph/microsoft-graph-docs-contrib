---
title: "industryDataRunEntityCountMetric resource type"
description: "Measure of total, active, and inactive entries for a single entity."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataRunEntityCountMetric resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Measure of total, active, and inactive entries for a single entity.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|active|Int32|Count of the entity marked as Active.|
|inactive|Int32|Count of the entity marked as Inactive.|
|total|Int32|Total count of the entity.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunEntityCountMetric",
  "active": "Integer",
  "inactive": "Integer",
  "total": "Integer"
}
```

