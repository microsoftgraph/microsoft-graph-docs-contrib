---
title: "plannerChecklistItem resource type"
description: "The **plannerChecklistItem** resource represents an item in the checklist of a task. The checklist on a task is represented by the checklistItems object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# plannerChecklistItem resource type

Namespace: microsoft.graph


The **plannerChecklistItem** resource represents an item in the checklist of a task. The checklist on a task is represented by the [checklistItems object](plannerchecklistitems.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isChecked|Boolean|Value is `true` if the item is checked and `false` otherwise.|
|lastModifiedBy|[identitySet](identityset.md)| Read-only. User ID by which this is last modified.|
|lastModifiedDateTime|DateTimeOffset|Read-only. Date and time at which this is last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|orderHint|String|Used to set the relative order of items in the checklist. The format is defined as outlined [here](planner-order-hint-format.md).|
|title|String|Title of the checklist item|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerChecklistItem"
}-->

```json
{
  "isChecked": true,
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "orderHint": "String",
  "title": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerChecklistItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

