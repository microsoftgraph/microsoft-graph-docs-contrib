---
title: "workbookApplication resource type"
description: "Represents the Excel workbookApplication that manages the workbook."
localization_priority: Normal
author: "lumine2008"
ms.prod: "excel"
---

# workbookApplication resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Excel application that manages the workbook.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookApplication](../api/workbookapplication-get.md) | [workbookApplication](workbookapplication.md) |Read properties and relationships of workbookApplication object.|
|[Calculate](../api/workbookapplication-calculate.md)|None|Recalculate all currently opened workbooks in Excel.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|calculationMode|string|Returns the calculation mode used in the workbook. Possible values are: `Automatic`, `AutomaticExceptTables`, `Manual`. Read-only.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookApplication"
}-->

```json
{
  "calculationMode": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/workbookapplication.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
