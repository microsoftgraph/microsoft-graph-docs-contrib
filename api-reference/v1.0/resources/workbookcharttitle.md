---
title: "workbookChartTitle resource type"
description: "Represents a chart title object of a chart."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart title
ms.date: 08/01/2024
---

# workbookChartTitle resource type

Namespace: microsoft.graph

Represents a chart title object of a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/charttitle-get.md) | [workbookChartTitle](workbookcharttitle.md) |Read the properties and relationships of a chart title.|
|[Update](../api/charttitle-update.md) | [workbookChartTitle](workbookcharttitle.md)	|Update a chart title. |

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|Boolean|Indicates whether the chart title will overlay the chart or not.|
|text|string|The title text of the chart.|
|visible|Boolean|Indicates whether the chart title is visible.|

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartTitleFormat](workbookcharttitleformat.md)|The formatting of a chart title, which includes fill and font formatting. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartTitle"
}-->

```json
{
  "overlay": true,
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

