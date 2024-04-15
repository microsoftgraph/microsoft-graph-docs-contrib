---
title: "filterDatetime resource type"
description: "Represents how to filter a date when filtering on values."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: excel
author: "ruoyingl"
---

# filterDatetime resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents how to filter a date when filtering on values.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|date|String|The date in ISO 8601 format used to filter data.|
|specificity|String|Defines how specific you should use the **date** to keep data. For example, if the date is `2005-04-02` and the **specificity** property is set to `month`, the filter operation keeps all rows with a date in the month of April 2009. The possible values are: `Year`, `Month`, `Day`, `Hour`, `Minute`, `Second`.|

## Relationships
None.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterDateTime"
}-->

```json
{
  "date": "String",
  "specificity": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "FilterDatetime resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
