---
title: "workbookChartTitleFormat resource type"
description: "Encapsulates the format properties for the chart title."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 05/10/2024
---

# workbookChartTitleFormat resource type

Namespace: microsoft.graph

Encapsulates the format properties for the chart title.


## Methods
None

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|fill|[workbookChartFill](workbookchartfill.md)|Represents the fill format of an object, which includes background formatting information. Read-only.|
|font|[workbookChartFont](workbookchartfont.md)|Represents the font attributes (font name, font size, color, etc.) for the current object. Read-only.|



## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookChartTitleFormat"
}-->

```json
{
  "fill": {"@odata.type": "microsoft.graph.workbookChartFill"},
  "font": {"@odata.type": "microsoft.graph.workbookChartFont"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartAreaFormat resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

