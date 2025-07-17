---
author: daspek
title: deleteAction resource type
description: The deleteAction object provides information about the deletion of an item.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/06/2024
---
# deleteAction resource type

Namespace: microsoft.graph

The presence of the **deleteAction** resource on an [**itemActivity**][activity] indicates that the activity deleted an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| name          | string | The name of the item that was deleted.
| objectType    | string | `File` or `Folder`, depending on the type of the deleted item.


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

<!--
{
  "type": "#page.annotation",
  "description": "The deleteAction object provides information about the deletion of an item.",
  "keywords": "activities,activity,action,delete,deletion",
  "section": "documentation",
  "tocPath": "Resources/DeleteAction",
  "suppressions": []
}
-->

