---
title: "searchAnswer resource type"
description: "Represents the base type for other search answers."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
---

# searchAnswer resource type

Namespace: microsoft.graph.search

Represents the base type for other search answers.

Base type of [acronym](../resources/search-acronym.md), [bookmark](../resources/search-bookmark.md), and [qna](../resources/search-qna.md).

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|The search answer description that is shown on the search results page.|
|displayName|String|The search answer name that is displayed in search results.|
|id|String|The unique identifier (GUID) for the search answer. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user who created or last modified the search answer. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the search answer was created or last edited. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|webUrl|String|The URL link for the search answer. When users select this search answer from the search results, they are directed to the specified URL.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "webUrl": "String"
}
```
