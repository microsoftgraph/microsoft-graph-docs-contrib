---
title: "workbookChartAxisTitle resource type"
description: "Represents the title of a chart axis."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart axis title
ms.date: 08/01/2024
---

# workbookChartAxisTitle resource type

Namespace: microsoft.graph

Represents the title of a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartaxistitle-get.md) | [workbookChartAxisTitle](workbookchartaxistitle.md) |Readthe  properties and relationships of a chart axis title.|
|[Update](../api/chartaxistitle-update.md) | [workbookChartAxisTitle](workbookchartaxistitle.md)	|Update a chart axis title. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|text|string|Represents the axis title.|
|visible|Boolean|A Boolean that specifies the visibility of an axis title.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartAxisTitleFormat](workbookchartaxistitleformat.md)|Represents the formatting of chart axis title. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.workbookChartAxisTitle"
}-->

```json
{
  "format": {"@odata.type":"microsoft.graph.workbookChartAxisTitleFormat"},
  "text": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxisTitle resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

