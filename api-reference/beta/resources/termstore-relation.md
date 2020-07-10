---
title: "relation resource type"
description: "Describes the entity for relations between terms in the termStore"
author: mohitpcad
ms.author: mopathak
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
doc_type: resourcePageType
---

# relation resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **microsoft.graph.termStore.relation** resource represents the relations between [microsoft.graph.termStore.term]. Currently two types of relations are supported between terms, the types are“pin” and “reuse” . In a “pin” relationship a term(“A”) can be pinned under a different term in a different termSet. In a pinned relationship new children to the term(“A”) can only be added in termSet in which term(“A”) was created. Any change in the hierarchy under term(“A”) gets reflected across termSets in which term(“A”) was pinned. The reused relationship is similar to the pinned except that changes to the reused term can be made from any hierarchy in which the term gets reused. Also a change in hierarchy made to the reused term does not get reflected in the other termSets where the term gets reused.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List relations](../api/termstore-term-list-relations.md)|[relation](../resources/termstore-relation.md) collection|Get the relations from the relations navigation property.|
|[Create relations](../api/termstore-relation-create.md)|[relation](../resources/termstore-relation.md)|Create a new relations object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of relation|
|relationship|relationType|Type of relation. Possible values are: `pin`, `reuse`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fromTerm|[termstore.term](../resources/termstore-term.md)|The from term of the relation. A null value would indicate the relation is directly with the termSet. |
|set|[termstore.set](../resources/termstore-set.md)|The set in which the relation relevant. A null value would mean relation exists between the two terms in every set.|
|toTerm|[termstore.term](../resources/termstore-term.md)|The to term of the relation. Cannot be a null value.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.relation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.relation",
  "id": "String (identifier)",
  "relationship": "String",
  
  /*  relationships */
  "fromTerm" : { "@odata.type" : "microsoft.graph.termStore.term"},
  "toTerm" : { "@odata.type" : "microsoft.graph.termStore.term"},
  "set" : { "@odata.type" : "microsoft.graph.termStore.set"}
}
```

[microsoft.graph.termStore.term]: termstore-term.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.relations]: termstore-relation.md
[microsoft.graph.termStore.relation]: termstore-relation.md

<!--
{
  "type": "#page.annotation",
  "description": "TermRelation is the entity for mapping relations between different terms",
  "keywords": "termRelation,facet,resource",
  "section": "documentation",
  "tocPath": "TermRelation",
  "tocBookmarks": {
    "Resources/termStore.relation": "#"
  },
  "suppressions": []
}
-->
