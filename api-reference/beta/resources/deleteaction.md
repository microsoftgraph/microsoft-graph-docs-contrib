---
author: daspek
description: The presence of the DeleteAction resource on an itemActivity indicates that the activity deleted an item.
ms.date: 09/14/2017
title: DeleteAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---

# DeleteAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **DeleteAction** resource on an [**itemActivity**][activity] indicates that the activity deleted an item.

[activity]: itemactivity.md

## Properties

| Property   | Type   | Description                                                    |
| :--------- | :----- | :------------------------------------------------------------- |
| name       | string | The name of the item that was deleted.                         |
| objectType | string | `File` or `Folder`, depending on the type of the deleted item. |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.deleteAction"
}-->

```json
{
  "name": "string",
  "objectType": "File | Folder"
}
```

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The DeleteAction object provides information about the deletion of an item.",
  "keywords": "activities,activity,action,delete,deletion",
  "section": "documentation",
  "tocPath": "Resources/DeleteAction",
  "suppressions": []
}
-->
