---
title: "roomList resource type"
description: "Provides a list of grouped of rooms created by the company"
localization_priority: Normal
author: "vrod9429"
ms.prod: "Outlook"
doc_type: "resourcePageType"
---

# roomList resource type

Roomlist is a group of rooms created by the company.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get roomList](../api/roomlist-get.md) | [roomList](roomlist.md) | Read properties and relationships of roomList object. |
| [List rooms](../api/roomlist-list-rooms.md) | [place](place.md) collection | Get a place object collection. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|emailAddress|String|The email address of the roomlist.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|rooms|[place](place.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.roomList",
  "baseType": ""
}-->

```json
{
  "emailAddress": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roomList resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
