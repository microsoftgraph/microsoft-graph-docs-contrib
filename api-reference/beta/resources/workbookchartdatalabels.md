---
title: "workbookChartDataLabels resource type"
description: "Represents a collection of all the data labels on a chart point."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart data labels
ms.date: 08/01/2024
---

# workbookChartDataLabels resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of all the data labels on a chart point.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartdatalabels-get.md) | [workbookChartDataLabels](workbookchartdatalabels.md) |Read the properties and relationships of a chartDataLabels object.|
|[Update](../api/chartdatalabels-update.md) | [workbookChartDataLabels](workbookchartdatalabels.md)	|Update a chartDataLabels object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|position|string|DataLabelPosition value that represents the position of the data label. The possible values are: `None`, `Center`, `InsideEnd`, `InsideBase`, `OutsideEnd`, `Left`, `Right`, `Top`, `Bottom`, `BestFit`, `Callout`.|
|separator|string|String that represents the separator used for the data labels on a chart.|
|showBubbleSize|Boolean|Boolean value that represents whether the data label bubble size is visible.|
|showCategoryName|Boolean|Boolean value that represents whether the data label category name is visible.|
|showLegendKey|Boolean|Boolean value that represents whether the data label legend key is visible.|
|showPercentage|Boolean|Boolean value that represents whether the data label percentage is visible.|
|showSeriesName|Boolean|Boolean value that represents whether the data label series name is visible.|
|showValue|Boolean|Boolean value that represents whether the data label value is visible.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartDataLabelFormat](workbookchartdatalabelformat.md)|Represents the format of chart data labels, which includes fill and font formatting. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.workbookChartDataLabels"
}-->

```json
{
  "position": "string",
  "separator": "string",
  "showBubbleSize": true,
  "showCategoryName": true,
  "showLegendKey": true,
  "showPercentage": true,
  "showSeriesName": true,
  "showValue": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookChartDataLabels resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


