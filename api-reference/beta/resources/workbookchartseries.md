---
title: "workbookChartSeries resource type"
description: "Represents a series in a chart."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart series
ms.date: 07/17/2024
---

# workbookChartSeries resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a series in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/chartseries-list.md) | [workbookChartSeries](workbookchartseries.md) collection |Get the list of chart series. |
|[Get](../api/chartseries-get.md) | [workbookChartSeries](workbookchartseries.md) |Read the properties and relationships of a chart series.|
|[Update](../api/chartseries-update.md) | [workbookChartSeries](workbookchartseries.md)	|Update a chart series. |
|[Create chart points](../api/chartseries-post-points.md) |[workbookChartPoint](workbookchartpoint.md)| Create a new chart point by posting to the points collection.|
|[List chart points](../api/chartseries-list-points.md) |[workbookChartPoint](workbookchartpoint.md) collection| Get a list of chart points.|
|[Get series at](../api/chartseriescollection-itemat.md)|[workbookChartSeries](workbookchartseries.md)|Get a chart series based on its position in the collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The name of a series in a chart.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartSeriesFormat](workbookchartseriesformat.md)|The formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[workbookChartPoint](workbookchartpoint.md) collection|A collection of all points in the series. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartSeries"
}-->

```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartSeries resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


