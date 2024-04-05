---
title: "ChartAxes resource type"
description: "Represents the chart axes."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# ChartAxes resource type

Namespace: microsoft.graph

Represents the chart axes.


## Methods
None

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|categoryAxis|[WorkbookChartAxis](workbookchartaxis.md)|Represents the category axis in a chart. Read-only.|
|seriesAxis|[WorkbookChartAxis](workbookchartaxis.md)|Represents the series axis of a 3-dimensional chart. Read-only.|
|valueAxis|[WorkbookChartAxis](workbookchartaxis.md)|Represents the value axis in an axis. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartAxes"
}-->

```json
{
  "categoryAxis": {"@odata.type": "microsoft.graph.workbookChartAxis"},
  "seriesAxis": {"@odata.type": "microsoft.graph.workbookChartAxis"},
  "valueAxis": {"@odata.type": "microsoft.graph.workbookChartAxis"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

