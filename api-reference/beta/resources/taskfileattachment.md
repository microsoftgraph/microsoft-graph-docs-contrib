---
title: "taskFileAttachment resource type"
description: "A file (such as a text file or Word document) attached to a todoTask "
author: "avijityadav"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# taskFileAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A file (such as a text file or Word document) attached to a [todoTask](../resources/todotask.md),
When creating a file attachment on task, include the following in the request body:

* `"@odata.type": "#microsoft.graph.taskFileAttachment"`
* The required properties **name** and **contentBytes**.

Inherits from [attachmentBase](../resources/attachmentbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List attachments](../api/todotask-list-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties.|
|[Upload a file to todoTask ](../api/taskfileattachment-createuploadsession.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties.|
|[Upload a small file to todoTask](../api/todotask-post-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Create a new [taskFileAttachment](../resources/taskfileattachment.md) object.|
|[Get attachments](../api/taskfileattachment-get.md)|[taskFileAttachment](../resources/taskfileattachment.md)|Read the properties and relationships of a [taskFileAttachment](../resources/taskfileattachment.md) object.|
|[Delete attachments](../api/taskfileattachment-delete.md)|None|Deletes a [taskFileAttachment](../resources/taskfileattachment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|The base64-encoded contents of the file.|
|contentType|String|The content type of the attachment. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|id|String|The ID of the attachment. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|name|String|The name representing the text that is displayed below the icon representing the embedded attachment.This does not need to be the actual file name. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|size|Int32|The size in bytes of the attachment. Inherited from [attachmentBase](../resources/attachmentbase.md).|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.taskFileAttachment",
  "baseType": "microsoft.graph.attachmentBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.taskFileAttachment",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "contentType": "String",
  "size": "Integer",
  "contentBytes": "Binary"
}
```

