---
author: "mohitpcad"
title: "Group resource type"
doc_type: "resourcePageType"
description: "Represents a group used in a term store."
ms.localizationpriority: medium
ms.prod: taxonomy
---

# Group resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Represents a group used in a term [store](../resources/termstore-store.md). A group is a logical hierarchy that contains a collection of sets under it. 

Inherits from [entity](../resources/entity.md).


## Methods

| Method                                                   | Return type       |    Description|
|:---------------------------------------------------------|:------------------|:---------------------|
| [Create group](../api/termstore-group-post.md)                     | [microsoft.graph.termStore.group] | Create a group in a term [store].|
| [Get group](../api/termstore-group-get.md)                           | [microsoft.graph.termStore.group] | Retrieve the data of a group in a term [store].|
| [Delete group](../api/termstore-group-delete.md)                     | None |  Delete a group in a term [store].|

## Properties

| Property             | Type               | Description|
|:---------------------|:-------------------|:------------------------------------|
| createdDateTime      | DateTimeOffset     | Date and time of the group creation. Read-only.|
| description          | string             | Description that gives details on the term usage.|
| displayName          | string             | Name of the group.|
| id                   | string             | Unique identifier of the group. Read-Only.|
| parentSiteId         | string             | ID of the parent site of this group.|
| scope                | string             | Returns the type of the group. Possible values are: `global`, `system`, and `siteCollection`.|

## Relationships
| Relationship       | Type                        | Description|
|:-------------------|:----------------------------|:--------------------------|
| sets           | [microsoft.graph.termStore.set][] collection | All sets under the group in a term [store].|

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
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "displayName": "string",
  "id": "string",
  "parentSiteId": "string",
  "scope": "microsoft.graph.termStore.groupScope"
}
```



[identitySet]: identitySet.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.group]: termstore-group.md
[microsoft.graph.termStore.store]: termstore-store.md
[store]: ../resources/termstore-store.md
[group]: ../resources/termstore-group.md
[set]: ../resources/termstore-set.md
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


