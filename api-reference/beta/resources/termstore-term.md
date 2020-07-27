---
title: "term resource type"
description: "Defines a term entity in a term store."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# term resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a term used in a term [store](../resources/termstore-store.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List children](../api/termstore-term-list-children.md)|[term](../resources/termstore-term.md) collection|Get the terms from the children navigation property.|
|[Create term](../api/termstore-term-create.md)|[term](../resources/termstore-term.md)|Create a new [term](../resources/termstore-term.md) object.|
|[Get term](../api/termstore-term-get.md)|[term](../resources/termstore-term.md)|Read the properties and relationships of a [term](../resources/termstore-term.md) object.|
|[Update term](../api/termstore-term-update.md)|[term](../resources/termstore-term.md)|Update the properties of a [term](../resources/termstore-term.md) object.|
|[Delete term](../api/termstore-term-delete.md)|None|Delete a [term](../resources/termstore-term.md) object.|
|[List relations](../api/termstore-term-list-relations.md)|[relation](../resources/termstore-relation.md) collection|Get the relations from the relations navigation property.|
|[Create relation](../api/termstore-relation-create.md)|[relation](../resources/termstore-relation.md)|Create a new relations object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of term creation. Read-only|
|descriptions|[microsoft.graph.termstore.localizedDescription](../resources/termstore-localizeddescription.md) collection|Description about term that is dependent on the languageTag|
|id|String|Unique identifier of term. Read-Only|
|labels|[microsoft.graph.termstore.localizedLabel](../resources/termstore-localizedlabel.md) collection||Label metadata for a term|
|lastModifiedDateTime|DateTimeOffset|Last date and time of term modification. Read-only|
|properties|[microsoft.graph.keyValue](../resources/keyvalue.md) collection|Collection of properties on the term|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|children|[term](../resources/termstore-term.md) collection|Children of current term|
|relations|[relation](../resources/termstore-relation.md) collection|To indicate which terms are related to the current term as either pinned or reused|
|set|[set](../resources/termstore-set.md)|The set in which the term is created|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.term",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.term",
  "id": "String (identifier)",
  "labels": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedLabel"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "descriptions": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedDescription"
    }
  ],
  "properties": [
    {
      "@odata.type": "microsoft.graph.keyValue"
    }
  ],
  
  /*  relationships  */
  "children" : [{"@odata.type" : "microsoft.graph.termStore.term"}],
  "set" : {"@odata.type" : "microsoft.graph.termStore.set"}, 
  "relations" : [{"@odata.type" : "microsoft.graph.termStore.relation"}]
}
```


<!--
{
  "type": "#page.annotation",
  "description": "Term is the entity used for tagging in termStore",
  "keywords": "term,facet,resource",
  "section": "documentation",
  "tocPath": "Terms",
  "tocBookmarks": {
    "Resources/termstore-term": "#"
  },
  "suppressions": []
}
-->
