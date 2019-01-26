---
title: "ChartSeriesFormat resource type"
description: "encapsulates the format properties for the chart series"
author: "lumine2008"
localization_priority: Normal
ms.prod: "excel"
---

# ChartSeriesFormat resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

encapsulates the format properties for the chart series


## Methods
None

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fill|[WorkbookChartFill](chartfill.md)|Represents the fill format of a chart series, which includes background formating information. Read-only.|
|line|[WorkbookChartLineFormat](chartlineformat.md)|Represents line formatting. Read-only.|


## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartSeriesFormat"
}-->

```json
{
  "fill": {"@odata.type": "microsoft.graph.workbookChartFill"},
  "line": {"@odata.type": "microsoft.graph.workbookChartLineFormat"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ChartSeriesFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chartseriesformat.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
