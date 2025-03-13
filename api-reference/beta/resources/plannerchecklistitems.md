---
title: "plannerChecklistItems resource type"
description: "Represents the collection of checklist items on a task. This complex type is an open type that's part of the task details object. The value in the property-value pair is the checklistItem object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/10/2024
---

# plannerChecklistItems resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the collection of checklist items on a task. This complex type is an open type that's part of the [task details](plannertaskdetails.md) object. The value in the property-value pair is the [checklistItem](plannerchecklistitem.md) object.


## Properties
Properties of an open type can be defined by the client. In this case, the client should provide **GUIDs** as properties and their values must be [checklistItem](plannerchecklistitem.md) objects. To remove an item in the checklist, set the value of the property to `null`.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.


<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerChecklistItems",
  "openType": true
}-->

```json
{
  "String-value":
  {
    "@odata.type": "microsoft.graph.plannerChecklistItem",
    "isChecked": true,
    "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
    "lastModifiedByDateTime": "String(timestamp)",
    "orderHint": "String-value",
    "title": "String-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerChecklistItems resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


