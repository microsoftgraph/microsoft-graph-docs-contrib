---
title: "workbookChartPoint resource type"
description: "Represents a point of a series in a chart."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart point
ms.date: 07/30/2024
---

# workbookChartPoint resource type

Namespace: microsoft.graph

Represents a point of a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/chartpoint-list.md) | [workbookChartPoint](workbookchartpoint.md) collection |Get a list of chartPoint objects. |
|[Get](../api/chartpoint-get.md) | [workbookChartPoint](workbookchartpoint.md) |Read the properties and relationships of chartPoint object.|
|[Get chart point at](../api/chartpointscollection-itemat.md)|[workbookChartPoint](workbookchartpoint.md)|Get a point based on its position within the series.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ID|string|unique identifier|
|value|Json|The value of a chart point. Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartPointFormat](workbookchartpointformat.md)|The format properties of the chart point. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartPoint"
}-->

```json
{
  "id": "string",
  "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartPoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

