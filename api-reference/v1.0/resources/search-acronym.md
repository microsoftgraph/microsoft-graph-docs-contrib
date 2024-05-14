---
title: "acronym resource type"
description: "Represents an acronym that is an administrative answer in Microsoft Search results to define common acronyms in an organization."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
---

# acronym resource type

Namespace: microsoft.graph.search

Represents an acronym that is an administrative answer in Microsoft Search results to define common acronyms in an organization.

Inherits from [searchAnswer](../resources/search-searchanswer.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List acronyms](../api/search-searchentity-list-acronyms.md)|[microsoft.graph.search.acronym](../resources/search-acronym.md) collection|Get a list of the [acronym](../resources/search-acronym.md) objects and their properties.|
|[Create acronym](../api/search-searchentity-post-acronyms.md)|[microsoft.graph.search.acronym](../resources/search-acronym.md)|Create a new [acronym](../resources/search-acronym.md) object.|
|[Get acronym](../api/search-acronym-get.md)|[microsoft.graph.search.acronym](../resources/search-acronym.md)|Read the properties and relationships of an [acronym](../resources/search-acronym.md) object.|
|[Update acronym](../api/search-acronym-update.md)|[microsoft.graph.search.acronym](../resources/search-acronym.md)|Update the properties of an [acronym](../resources/search-acronym.md) object.|
|[Delete acronym](../api/search-acronym-delete.md)|None|Delete an [acronym](../resources/search-acronym.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|A brief description of the acronym that gives users more information about the acronym and what it stands for. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|The actual short form or acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|id|String|The unique identifier (GUID) for the acronym. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user who created or last modified the acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the acronym was created or last edited. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only.|
|standsFor|String|What the acronym stands for.|
|state|microsoft.graph.search.answerState|State of the acronym. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|webUrl|String|The URL of the page or website where users can go for more information about the acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.acronym",
  "baseType": "microsoft.graph.search.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.acronym",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "standsFor": "String",
  "state": "String",
  "webUrl": "String"
}
```

