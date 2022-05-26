---
title: "attachment_v2 resource type"
description: "Attachment to a task**"
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# attachment_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can add related content to a user [todoTask](../resources/todotask.md) in the form of an attachment.
This is an abstract type.

**attachment_v2** is the base resource for the following derived type of attachment:

* A file ([fileAttachment_v2](../resources/fileattachment_v2.md) resource)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attachments](../api/todotask-list-attachments.md)|[attachment_v2](../resources/attachment_v2.md) collection|Get a list of the [attachment_v2](../resources/attachment_v2.md) objects and their properties.|
|[Add attachment to a todoTask](../api/todotask-post-attachments.md)|[attachment_v2](../resources/attachment_v2.md)|Create a new [attachment_v2](../resources/attachment_v2.md) object.|
|[Get attachment](../api/attachment_v2-get.md)|[attachment_v2](../resources/attachment_v2.md)|Read the properties and relationships of an [attachment_v2](../resources/attachment_v2.md) object.|
|[Delete attachment](../api/attachment_v2-delete.md)|None|Deletes an [attachment_v2](../resources/attachment_v2.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentType|String|The MIME type.|
|id|String|Read only.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|name|String|The display name of the attachment. This does not need to be the actual file name.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attachment_v2",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attachment_v2",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "contentType": "String",
  "size": "Integer"
}
```

