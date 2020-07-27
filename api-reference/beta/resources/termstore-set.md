---
title: "set resource type"
description: "Represents a set in a term store."
author: mohitpcad
localization_priority: Normal
ms.prod: "Sharepoint"
doc_type: resourcePageType
---

# set resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the set used in a term [microsoft.graph.termstore.store].

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create set](../api/termstore-set-create.md)|[microsoft.graph.termstore.set](../resources/termstore-set.md)|Create a new [microsoft.graph.termstore.set](../resources/termstore-set.md) object.|
|[Get set](../api/termstore-set-get.md)|[microsoft.graph.termstore.set](../resources/termstore-set.md)|Read the properties and relationships of a [microsoft.graph.termstore.set](../resources/termstore-set.md) object.|
|[Update set](../api/termstore-set-update.md)|[microsoft.graph.termstore.set](../resources/termstore-set.md)|Update the properties of a [microsoft.graph.termstore.set](../resources/termstore-set.md) object.|
|[Delete set](../api/termstore-set-delete.md)|None|Deletes a [microsoft.graph.termstore.set](../resources/termstore-set.md) object.|
|[Create term](../api/termstore-term-create.md)|[microsoft.graph.termstore.term](../resources/termstore-term.md)|Create a new [microsoft.graph.termstore.term] object.|
|[Get term](../api/termstore-term-get.md)|[microsoft.graph.termstore.term](../resources/termstore-term.md)|Read the properties and relationships of a [microsoft.graph.termstore.term](../resources/termstore-term.md) object.|
|[List sets](../api/termstore-group-list-sets.md)|collection [microsoft.graph.termstore.set] | Returns list of sets contained within a [microsoft.graph.termstore.group] |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of set creation. Read-only.|
|description|String|Description giving details on the term usage.|
|id|String|Unique identifier. Read-only.|
|localizedNames|[microsoft.graph.termstore.localizedName](../resources/termstore-localizedname.md) collection|Name of the set for each languageTag.|
|properties|[microsoft.graph.keyValue](../resources/keyvalue.md) collection|Custom properties for the set.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|children|[microsoft.graph.termstore.term](../resources/termstore-term.md) collection|Children terms of term set.|
|parentGroup|[microsoft.graph.termstore.group](../resources/termstore-group.md)|The parent group that contains the set.|
|relations|[microsoft.graph.termstore.relation](../resources/termstore-relation.md) collection|Indicates which terms have been pinned or reused directly under the term set.|
|terms|[microsoft.graph.termstore.term](../resources/termstore-term.md) collection|All the terms under the set.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termStore.set",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termStore.set",
  "id": "String (identifier)",
  "localizedNames": [
    {
      "@odata.type": "microsoft.graph.termStore.localizedName"
    }
  ],
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "properties": [
    {
      "@odata.type": "microsoft.graph.termStore.keyValue"
    }
  ],
  
  /*  relationships  */
  "children" : [{"@odata.type" : "microsoft.graph.termStore.term"}],
  "parentGroup" : {"odata.type" : "microsoft.graph.termStore.group"},
  "relations" : [{"@odata.type" : "microsoft.graph.termStore.relation"}] ,
  "terms" :  [{"@odata.type" : "microsoft.graph.termStore.term"}]
}
```

[microsoft.graph.termStore.term]: termstore-term.md
[microsoft.graph.termStore.set]: termstore-set.md
[microsoft.graph.termStore.group]: termstore-group.md
[microsoft.graph.termStore.relation]: termstore-relation.md
[microsoft.graph.termStore.store]: termstore-store.md
[microsoft.graph.termStore.localizedName]: termstore-localizedname.md

<!--
{
  "type": "#page.annotation",
  "description": "TermSet is the entity containing the particular taxonomy for a tenant",
  "keywords": "termSet,facet,resource",
  "section": "documentation",
  "tocPath": "TermSet",
  "tocBookmarks": {
    "Resources/termStore.set": "#"
  },
  "suppressions": []
}
-->
