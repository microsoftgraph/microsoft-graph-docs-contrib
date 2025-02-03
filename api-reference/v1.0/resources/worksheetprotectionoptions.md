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
|allowAutoFilter|Boolean|Represents the worksheet protection option of allowing using auto filter feature.|
|allowDeleteColumns|Boolean|Represents the worksheet protection option of allowing deleting columns.|
|allowDeleteRows|Boolean|Represents the worksheet protection option of allowing deleting rows.|
|allowFormatCells|Boolean|Represents the worksheet protection option of allowing formatting cells.|
|allowFormatColumns|Boolean|Represents the worksheet protection option of allowing formatting columns.|
|allowFormatRows|Boolean|Represents the worksheet protection option of allowing formatting rows.|
|allowInsertColumns|Boolean|Represents the worksheet protection option of allowing inserting columns.|
|allowInsertHyperlinks|Boolean|Represents the worksheet protection option of allowing inserting hyperlinks.|
|allowInsertRows|Boolean|Represents the worksheet protection option of allowing inserting rows.|
|allowPivotTables|Boolean|Represents the worksheet protection option of allowing using pivot table feature.|
|allowSort|Boolean|Represents the worksheet protection option of allowing using sort feature.|

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
<!-- {
  "type": "#page.annotation",
  "description": "WorksheetProtectionOptions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

