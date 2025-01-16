---
title: "workbookChartGridlines resource type"
description: "Represents major or minor gridlines on a chart axis."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Chart gridlines
ms.date: 08/01/2024
---

# workbookChartGridlines resource type

Namespace: microsoft.graph

Represents major or minor gridlines on a chart axis.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/chartgridlines-get.md) | [workbookChartGridlines](workbookchartgridlines.md) |Read the properties and relationships of a chartGridlines object.|
|[Update](../api/chartgridlines-update.md) | [workbookChartGridlines](workbookchartgridlines.md)	|Update a chartGridlines object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|visible|Boolean|Indicates whether the axis gridlines are visible.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[workbookChartGridlinesFormat](workbookchartgridlinesformat.md)|Represents the formatting of chart gridlines. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookChartGridlines"
}-->

```json
{
  "visible": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartGridlines resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

