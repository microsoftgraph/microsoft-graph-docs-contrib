---
title: "workbookChart resource type"
description: "Represents a chart object in a workbook."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart
ms.date: 07/30/2024
---

# workbookChart resource type

Namespace: microsoft.graph

Represents a chart object in a workbook.


## Methods

| Method | Return Type |Description|
|:-------|:------------|:----------|
|[List](../api/chart-list.md) | [workbookChart](workbookchart.md) collection |Get the list of chart objects. |
|[Get](../api/chart-get.md) | [workbookChart](workbookchart.md) |Read the properties and relationships of chart object.|
|[Update](../api/chart-update.md) | [workbookChart](workbookchart.md)	|Update a chart object.|
|[Delete](../api/chart-delete.md)|None|Delete the chart object.|
|[List chart series](../api/chart-list-series.md) |[workbookChartSeries](workbookchartseries.md) collection| Get the list of chart series.|
|[Create chart series](../api/chart-post-series.md) |[workbookChartSeries](workbookchartseries.md)| Create a new chart series in the chart series.|
|[Add chart](../api/chartcollection-add.md)|[workbookChart](workbookchart.md)|Creates a new chart.|
|[Get chart at](../api/chartcollection-itemat.md)|[workbookChart](workbookchart.md)|Gets a chart based on its position in the collection.|
|[Get chart image](../api/chart-image.md)|Image base64 encoded string|Get a base64-encoded image of the chart that is scaled to fit the specified dimensions.|
|[Reset data](../api/chart-setdata.md)|None|Resets the source data for the chart.|
|[Set position data](../api/chart-setposition.md)|None|Positions the chart relative to cells on the worksheet.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|height|double|Represents the height, in points, of the chart object.|
|id|string|Gets a chart based on its position in the collection. Read-only.|
|left|double|The distance, in points, from the left side of the chart to the worksheet origin.|
|name|string|Represents the name of a chart object.|
|top|double|Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).|
|width|double|Represents the width, in points, of the chart object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|axes|[workbookChartAxes](workbookchartaxes.md)|Represents chart axes. Read-only.|
|dataLabels|[workbookChartDataLabels](workbookchartdatalabels.md)|Represents the data labels on the chart. Read-only.|
|format|[workbookChartAreaFormat](workbookchartareaformat.md)|Encapsulates the format properties for the chart area. Read-only.|
|legend|[workbookChartLegend](workbookchartlegend.md)|Represents the legend for the chart. Read-only.|
|series|[workbookChartSeries](workbookchartseries.md) collection|Represents either a single series or collection of series in the chart. Read-only.|
|title|[workbookChartTitle](workbookcharttitle.md)|Represents the title of the specified chart, including the text, visibility, position and formatting of the title. Read-only.|
|worksheet|[workbookWorksheet](workbookworksheet.md)|The worksheet containing the current chart. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChart"
}-->

```json
{
  "height": 1024,
  "id": "string",
  "left": 1024,
  "name": "string",
  "top": 1024,
  "width": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Chart resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

