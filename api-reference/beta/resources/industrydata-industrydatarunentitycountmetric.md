---
title: "industryDataRunEntityCountMetric resource type"
description: "Represents the measure of total, active, and inactive entries for a single entity."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# industryDataRunEntityCountMetric resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the measure of total, active, and inactive entries for a single entity.

## Properties

| Property | Type  | Description                                               |
| :------- | :---- | :-------------------------------------------------------- |
| active   | Int32 | The count of entries for the entity marked as `Active`.   |
| inactive | Int32 | The count of entries for the entity marked as `Inactive`. |
| total    | Int32 | Total count of the entity.                                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunEntityCountMetric",
  "active": "Int32",
  "inactive": "Int32",
  "total": "Int32"
}
```
