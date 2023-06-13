---
title: "attachmentSession resource type"
description: "Represents a resource that uploads large attachments to a todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# attachmentSession resource type

Namespace: microsoft.graph

Represents a resource that uploads large attachments to a [todoTask](../resources/todotask.md).

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|The content streams that are uploaded.|
|expirationDateTime|DateTimeOffset| The date and time in UTC when the upload session will expire. The complete file must be uploaded before this expiration time is reached.|
|id|String|Unique identifier for the attachment session. Read-only. Inherited from [entity](../resources/entity.md).|
|nextExpectedRanges|String collection|Indicates a single value `{start}` that represents the location in the file where the next upload should begin.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attachmentSession",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attachmentSession",
  "content": "Stream",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "nextExpectedRanges": [
    "String"
  ]
}
```

