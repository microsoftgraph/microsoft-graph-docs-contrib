---
title: "workbookChartAxisFormat resource type"
description: "Encapsulates the format properties for the chart axis."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 05/10/2024
---

# workbookChartAxisFormat resource type

Namespace: microsoft.graph

Encapsulates the format properties for the chart axis.


## Methods
None
## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|font|[workbookChartFont](workbookchartfont.md)|Represents the font attributes (font name, font size, color, etc.) for a chart axis element. Read-only.|
|line|[workbookChartLineFormat](workbookchartlineformat.md)|Represents chart line formatting. Read-only.|


## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartAxisFormat"
}-->

```json
{
  "font": {"@odata.type": "microsoft.graph.workbookChartFont"},
  "line": {"@odata.type": "microsoft.graph.workbookChartLineFormat"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAxisFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

