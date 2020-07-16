---
title: "set resource type"
description: "Describes the termSet in the termStore"
author: mohitpcad
ms.author: mopathak
localization_priority: Normal
ms.prod: "sharepoint-taxonomy"
doc_type: resourcePageType
---

# set resource type

Namespace: microsoft.graph.termStore

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **set** resource represents the set used in the [microsoft.graph.termStore.store].


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create set](../api/termstore-set-create.md)|[set](../resources/termstore-set.md)|Create a new [set](../resources/termstore-set.md) object.|
|[Get set](../api/termstore-set-get.md)|[set](../resources/termstore-set.md)|Read the properties and relationships of a [set](../resources/termstore-set.md) object.|
|[Update set](../api/termstore-set-update.md)|[set](../resources/termstore-set.md)|Update the properties of a [set](../resources/termstore-set.md) object.|
|[Delete set](../api/termstore-set-delete.md)|None|Deletes a [set](../resources/termstore-set.md) object.|
|[Create term](../api/termstore-term-create.md)|[term](../resources/termstore-term.md)|Create a new term object.|
|[Get term](../api/termstore-term-get.md)|[term](../resources/termstore-term.md)|Read the properties and relationships of a [term](../resources/termstore-term.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time of set creation. Read-only.|
|description|String|Description giving details on the term usage|
|id|String|Unique identifier of set. Read-only.|
|localizedNames|[localizedName](../resources/termstore-localizedname.md) collection|Name of set for each languageTag|
|properties|[keyValue](../resources/keyvalue.md) collection|Custom properties for set|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|children|[term](../resources/termstore-term.md) collection|Children terms of termSet|
|parentGroup|[group](../resources/termstore-group.md)|Group containing the particular set|
|relations|[relation](../resources/termstore-relation.md) collection|To indicate which terms have been pinned or reused directly under the termSet|
|terms|[term](../resources/termstore-term.md) collection|All the terms under the set|

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
