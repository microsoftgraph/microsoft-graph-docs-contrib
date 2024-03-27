---
title: "basicFilter resource type"
description: "A basic filter implementation with single condition on a single attribute"
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# basicFilter resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A basic filter implementation with single condition on a single attribute.

Inherits from [microsoft.graph.industryData.filter](../resources/industrydata-filter.md).

## Properties

| Property  | Type                                       | Description                                                                                 |
| :-------- | :----------------------------------------- | :------------------------------------------------------------------------------------------ |
| attribute | microsoft.graph.industryData.filterOptions | The attribute to filter on. The possible values are: `orgExternalId`, `unknownFutureValue`. |
| in        | String collection                          | The condition to filter with.                                                                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.basicFilter"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.basicFilter",
  "attribute": "String",
  "in": ["String"]
}
```
