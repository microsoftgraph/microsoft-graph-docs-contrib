---
title: "workbookFilterDatetime resource type"
description: "Represents how to filter a date when filtering on values."
ms.localizationpriority: medium
author: "ruoyingl"
ms.subservice: excel
doc_type: resourcePageType
---

# workbookFilterDatetime resource type

Namespace: microsoft.graph

Represents how to filter a date when filtering on values.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|date|string|The date in ISO8601 format used to filter data.|
|specificity|string|How specific the date should be used to keep data. For example, if the date is 2005-04-02 and the specificity is set to "month", the filter operation will keep all rows with a date in the month of April 2009. The possible values are: `Year`, `Monday`, `Day`, `Hour`, `Minute`, `Second`.|

## Relationships
None


## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookFilterDateTime"
}-->

```json
{
  "date": "string",
  "specificity": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "FilterDatetime resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

