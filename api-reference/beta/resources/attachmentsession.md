---
title: "attachmentSession resource type"
description: "Represents a resource used to upload large attachments to a todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# attachmentSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource used to upload larget attachments to a [todoTask](../resources/todotask.md).

Inherits from [entity](../resources/entity.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|Stream|Content streams that are uploaded.|
|expirationDateTime|DateTimeOffset| The date and time in UTC that the upload session will expire. The complete file must be uploaded before this expiration time is reached.|
|id|String|Read only. Inherited from [entity](../resources/entity.md).|
|nextExpectedRanges|String collection|When uploading files to **todoTask**, this property indicates a single value "{start}", the location in the file where the next upload should begin. |

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
  "id": "String (identifier)",
  "content": "Stream",
  "expirationDateTime": "String (timestamp)",
  "nextExpectedRanges": [
    "String"
  ]
}
```

