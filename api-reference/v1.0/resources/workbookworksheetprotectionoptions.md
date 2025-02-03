---
title: "workbookWorksheetProtectionOptions resource type"
description: "Represents the options in sheet protection."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# workbookWorksheetProtectionOptions resource type

Namespace: microsoft.graph


Represents the options in sheet protection.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowAutoFilter|Boolean|Indicates whether the worksheet protection option to allow the use of the autofilter feature is enabled.|
|allowDeleteColumns|Boolean|Indicates whether the worksheet protection option to allow deleting columns is enabled.|
|allowDeleteRows|Boolean|Indicates whether the worksheet protection option to allow deleting rows is enabled.|
|allowFormatCells|Boolean|Indicates whether the worksheet protection option to allow formatting cells is enabled.|
|allowFormatColumns|Boolean|Indicates whether the worksheet protection option to allow formatting columns is enabled.|
|allowFormatRows|Boolean|Indicates whether the worksheet protection option to allow formatting rows is enabled.|
|allowInsertColumns|Boolean|Indicates whether the worksheet protection option to allow inserting columns is enabled.|
|allowInsertHyperlinks|Boolean|Indicates whether the worksheet protection option to allow inserting hyperlinks is enabled.|
|allowInsertRows|Boolean|Indicates whether the worksheet protection option to allow inserting rows is enabled.|
|allowPivotTables|Boolean|Indicates whether the worksheet protection option to allow the use of the pivot table feature is enabled.|
|allowSort|Boolean|Indicates whether the worksheet protection option to allow the use of the sort feature is enabled.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookWorksheetProtectionOptions"
}-->

```json
{
  "allowAutoFilter": true,
  "allowDeleteColumns": true,
  "allowDeleteRows": true,
  "allowFormatCells": true,
  "allowFormatColumns": true,
  "allowFormatRows": true,
  "allowInsertColumns": true,
  "allowInsertHyperlinks": true,
  "allowInsertRows": true,
  "allowPivotTables": true,
  "allowSort": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookWorksheetProtectionOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


