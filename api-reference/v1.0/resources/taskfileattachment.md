---
title: "taskFileAttachment resource type"
description: "Represents a file, such as a text file or Word document, attached to a todoTask."
author: "avijityadav"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# taskFileAttachment resource type

Namespace: microsoft.graph

Represents a file, such as a text file or Word document, attached to a [todoTask](../resources/todotask.md).
When you create a file attachment on a task, include `"@odata.type": "#microsoft.graph.taskFileAttachment"` and the properties **name** and **contentBytes**.

Inherits from [attachmentBase](../resources/attachmentbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/todotask-list-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties.|
|[Attach small file](../api/todotask-post-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Add a new [taskFileAttachment](../resources/taskfileattachment.md) object to a [todoTask](../resources/todotask.md).|
|[Attach all file sizes](../api/taskfileattachment-createuploadsession.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Create an upload session to iteratively upload ranges of a file as an attachment to a [todoTask](../resources/todotask.md).|
|[Get](../api/taskfileattachment-get.md)|[taskFileAttachment](../resources/taskfileattachment.md)|Read the properties and relationships of a [taskFileAttachment](../resources/taskfileattachment.md) object.|
|[Delete](../api/taskfileattachment-delete.md)|None|Delete a [taskFileAttachment](../resources/taskfileattachment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|The base64-encoded contents of the file.|
|contentType|String|The content type of the attachment. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|id|String|The ID of the attachment. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|name|String|The name of the text displayed under the icon that represents the embedded attachment. This does not need to be the actual file name. Inherited from [attachmentBase](../resources/attachmentbase.md).|
|size|Int32|The size in bytes of the attachment. Inherited from [attachmentBase](../resources/attachmentbase.md).|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "contentBytes": "Binary",
  "contentType": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "size": "Int32"
}
```

