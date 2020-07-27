---
title: "store resource type"
description:  "Describes the top-level store in the termStore"
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: "resourcePageType"
---

# store resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a taxonomy term store.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description
|:---|:---|:---
|[Get store](../api/termstore-store-get.md) | [microsoft.graph.termstore.store](../resources/termstore-store.md) | Read the properties and relationships of a [store](../resources/termstore-store.md) object.
|[Update store](../api/termstore-store-update.md) | [microsoft.graph.termstore.store](../resources/termstore-store.md) | Update the properties of a [store](../resources/termstore-store.md) object.
|[List groups](../api/termstore-list-groups.md)|[microsoft.graph.termstore.group](../resources/termstore-group.md) collection|Get the groups from the groups navigation property.|

## Properties
|Property|Type|Description
|:---|:---|:---
|defaultLanguageTag | String | Default language of the term store.
|id|String | Unique identifier of the term store. Read-only.
|languageTags | String collection | List of languages for the term store.

## Relationships
|Relationship|Type|Description
|:---|:---|:---
|groups |[microsoft.graph.termstore.group](../resources/termstore-group.md) collection | Collection of all groups available in the term store.
|sets | [microsoft.graph.termstore.set](../resources/termstore-set.md) collection | Collection of all sets available in the term store.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.store",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.store",
  "id": "String (identifier)",
  "defaultLanguageTag": "String",
  "languageTags": [
    "String"
  ],
  /*  relationships  */
  "groups" : [{"@odata.type" : "microsoft.graph.termStore.group"}] ,
  "sets" : [{"oData.type" : "microsoft.graph.termStore.set"}]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "TermStore is the top-level entity used for managing taxonomy for a client",
  "keywords": "termStore,facet,resource",
  "section": "documentation",
  "tocPath": "TermStore",
  "tocBookmarks": {
    "Resources/termStore.store": "#"
  },
  "suppressions": []
}
-->

