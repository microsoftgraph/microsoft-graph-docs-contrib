---
title: "workbookWorksheetProtection resource type"
description: "Represents the protection of a sheet object."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Worksheet protection
ms.date: 08/01/2024
---

# workbookWorksheetProtection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the protection of a sheet object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/worksheetprotection-get.md) | [workbookWorksheetProtection](workbookworksheetprotection.md) |Read the properties and relationships of a workbookWorksheetProtection object.|
|[Protect worksheet](../api/worksheetprotection-protect.md)|None|Protect a worksheet. Returns an error if the worksheet is already protected.|
|[Unprotect worksheet](../api/worksheetprotection-unprotect.md)|None|Unprotect a worksheet.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|options|[workbookWorksheetProtectionOptions](workbookworksheetprotectionoptions.md)|Worksheet protection options. Read-only.|
|protected|Boolean|Indicates whether the worksheet is protected.  Read-only.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "options"
  ],
  "@odata.type": "microsoft.graph.workbookWorksheetProtection"
}-->

```json
{
  "protected": "Boolean"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "workbookWorksheetProtection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


