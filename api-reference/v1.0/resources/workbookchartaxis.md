---
title: "workbookChartAxis resource type"
description: "Represents a single axis in a chart."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# workbookChartAxis resource type

Namespace: microsoft.graph

Represents a single axis in a chart.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartaxis-get.md) | [workbookChartAxis](workbookchartaxis.md) |Read the properties and relationships of a chart axis.|
|[Update](../api/chartaxis-update.md) | [workbookChartAxis](workbookchartaxis.md)	|Update a chart axis. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| id       |string   | Unique identifier. Read-only.|
|majorUnit|Json|Represents the interval between two major tick marks. Can be set to a numeric value or an empty string.  The returned value is always a number.|
|maximum|Json|Represents the maximum value on the value axis.  Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.|
|minimum|Json|Represents the minimum value on the value axis. Can be set to a numeric value or an empty string (for automatic axis values).  The returned value is always a number.|
|minorUnit|Json|Represents the interval between two minor tick marks. "Can be set to a numeric value or an empty string (for automatic axis values). The returned value is always a number.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartAxisFormat](workbookchartaxisformat.md)|Represents the formatting of a chart object, which includes line and font formatting. Read-only.|
|majorGridlines|[workbookChartGridlines](workbookchartgridlines.md)|Returns a gridlines object that represents the major gridlines for the specified axis. Read-only.|
|minorGridlines|[workbookChartGridlines](workbookchartgridlines.md)|Returns a Gridlines object that represents the minor gridlines for the specified axis. Read-only.|
|title|[workbookChartAxisTitle](workbookchartaxistitle.md)|Represents the axis title. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartAxis"
}-->

```json
{
  "format": {"@odata.type": "microsoft.graph.workbookChartAxisFormat"},
  "id": "string",
  "majorGridlines": {"@odata.type": "microsoft.graph.workbookChartGridlines"},
  "majorUnit": "string",
  "maximum": "string",
  "minimum": "string",
  "minorGridlines": {"@odata.type": "microsoft.graph.workbookChartGridlines"},
  "minorUnit": "string",
  "title": {"@odata.type": "microsoft.graph.workbookChartAxisTitle"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxis resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

