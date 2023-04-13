---
title: "attachmentBase resource type"
description: "Represents an abstract base type for an attachment."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# attachmentBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for an attachment. You can add related content to a [todoTask](../resources/todotask.md) in the form of an attachment.

Base type of [taskFileAttachment](../resources/taskfileattachment.md).

Inherits from [entity](../resources/entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|The MIME type.|
|id|String|Unique identifier for the attachment. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|name|String|The display name of the attachment. This does not need to be the actual file name.|
|size|Int32|The length of the attachment in bytes.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attachmentBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attachmentBase",
  "contentType": "String",  
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "size": "Int32"
}
```

