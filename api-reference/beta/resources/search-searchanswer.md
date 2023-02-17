---
title: "searchAnswer resource type"
description: "The search answer is a base type for other search answers."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# searchAnswer resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The search answer is a base type for other search answers, such as [acronym](../resources/search-acronym.md), [bookmark](../resources/search-bookmark.md), and [QnA](../resources/search-qna.md) resources. Includes properties that apply to other search answer entities.


Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (GUID) for the search answer. Inherited from [entity](../resources/entity.md).|
|displayName|String|Search answer name displayed in search results.|
|description|String|Search answer description shown on search results page.|
|webUrl|String|Search answer URL link. When users click this search answer in search results, they will go to this URL.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the search answer. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the search answer is created or edited. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.searchAnswer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.searchAnswer",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```

