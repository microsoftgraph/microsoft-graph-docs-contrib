---
title: "authoredNote resource type"
description: "Represents the properties of a note written by an author"
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# authoredNote resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties of a note written by an author.

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|author|[identity](../resources/identity.md)|Identity information about the note's author.|
|content|[itemBody](../resources/itembody.md)|The content of the note.|
|createdDateTime|DateTimeOffset|The date and time when the entity was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
    "@odata.type": "microsoft.graph.itemBody",
    "content": "String",
    "contentType": "String"
  },
  "createdDateTime": "String (timestamp)"
}
```

