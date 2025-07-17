---
title: "workbookChartLegend resource type"
description: "Represents the legend in a chart."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart legend
ms.date: 08/01/2024
---

# workbookChartLegend resource type

Namespace: microsoft.graph

Represents the legend in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartlegend-get.md) | [workbookChartLegend](workbookchartlegend.md) |Read the properties and relationships of chartLegend object.|
|[Update](../api/chartlegend-update.md) | [workbookChartLegend](workbookchartlegend.md)	|Update a chartLegend object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|Boolean|Indicates whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. The possible values are: `Top`, `Bottom`, `Left`, `Right`, `Corner`, `Custom`.|
|visible|Boolean|Indicates whether the chart legend is visible.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartLegendFormat](workbookchartlegendformat.md)|Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartLegend"
}-->

```json
{
  "format": {"@odata.type":"microsoft.graph.workbookChartLegendFormat"},
  "overlay": true,
  "position": "string",
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartLegend resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

