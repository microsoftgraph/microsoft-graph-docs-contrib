---
author: mohitpcad
title: Group resource type
doc_type: "resourcePageType"
description: "Describes the group entity in the termStore"
localization_priority: Normal
ms.prod: "Sharepoint"
---

# Group resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


The **group** resource represents the group used in [termStore](../resources/termstore-store.md).

Inherits from [entity](../resources/entity.md).


## Methods

| Method                                                   | Return type       |    Description
|:---------------------------------------------------------|:------------------|:---------------------
| [Create termGroup](../api/termstore-group-post.md)                     | [microsoft.graph.termStore.group] | Create a group in termStore.
| [Get termGroup](../api/termstore-store-get-group.md)                           | [microsoft.graph.termStore.group] | Retrieve data of a group in termStore.
| [Delete termGroup](../api/termstore-group-delete.md)                     | None |  Delete group in termStore.

## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:------------------------------------
| createdDateTime      | DateTimeOffset     | Date and time of group creation. Read-only.
| description          | string             | Description giving details on the term usage.
| id                   | string             | Unique identifier of group. Read-Only.
| displayName          | string             | Name of group.
| scope                | string              | Returns type of group. Possible values are 'global', 'system' and 'siteCollection'.

## Relationships
| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| sets           | [microsoft.graph.termStore.set][] collection | All sets under the group in a termStore.

## JSON representation

The following is a JSON representation of a **group** resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.group",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.termStore.group",
  "id": "string",
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "scope" : "microsoft.graph.termStore.groupScope",
  "displayName": "string",  

}
```



[identitySet]: identitySet.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.group]: termstore-group.md
[microsoft.graph.termStore.store]: termstore-store.md

<!--
{
  "type": "#page.annotation",
  "description": "TermGroup is the entity used for managing permissions for the termSets in termStore",
  "keywords": "termGroup,facet,resource",
  "section": "documentation",
  "tocPath": "TermGroup",
  "tocBookmarks": {
    "Resources/termStore.group": "#"
  },
  "suppressions": []
}
-->
