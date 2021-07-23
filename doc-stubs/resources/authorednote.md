---
title: "authoredNote resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# authoredNote resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authoredNotes](../api/authorednote-list.md)|[authoredNote](../resources/authorednote.md) collection|Get a list of the [authoredNote](../resources/authorednote.md) objects and their properties.|
|[Create authoredNote](../api/authorednote-create.md)|[authoredNote](../resources/authorednote.md)|Create a new [authoredNote](../resources/authorednote.md) object.|
|[Get authoredNote](../api/authorednote-get.md)|[authoredNote](../resources/authorednote.md)|Read the properties and relationships of an [authoredNote](../resources/authorednote.md) object.|
|[Update authoredNote](../api/authorednote-update.md)|[authoredNote](../resources/authorednote.md)|Update the properties of an [authoredNote](../resources/authorednote.md) object.|
|[Delete authoredNote](../api/authorednote-delete.md)|None|Deletes an [authoredNote](../resources/authorednote.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|author|[identity](../resources/identity.md)|**TODO: Add Description**|
|content|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authoredNote",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authoredNote",
  "author": {
    "@odata.type": "microsoft.graph.identity"
  },
  "content": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "createdDateTime": "String (timestamp)"
}
```

