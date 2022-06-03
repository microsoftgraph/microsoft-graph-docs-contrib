---
title: "taskFileAttachment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# taskFileAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [attachmentBase](../resources/attachmentbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List taskFileAttachments](../api/todotask-list-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Get a list of the [taskFileAttachment](../resources/taskfileattachment.md) objects and their properties.|
|[Create taskFileAttachments](../api/todotask-post-attachments.md)|[taskFileAttachment](../resources/taskfileattachment.md) collection|Create a new [taskFileAttachment](../resources/taskfileattachment.md) object.|
|[Get taskFileAttachment](../api/taskfileattachment-get.md)|[taskFileAttachment](../resources/taskfileattachment.md)|Read the properties and relationships of a [taskFileAttachment](../resources/taskfileattachment.md) object.|
|[Delete taskFileAttachment](../api/taskfileattachment-delete.md)|None|Deletes a [taskFileAttachment](../resources/taskfileattachment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|**TODO: Add Description**|
|contentType|String|**TODO: Add Description** Inherited from [attachmentBase](../resources/attachmentbase.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [attachmentBase](../resources/attachmentbase.md).|
|name|String|**TODO: Add Description** Inherited from [attachmentBase](../resources/attachmentbase.md).|
|size|Int32|**TODO: Add Description** Inherited from [attachmentBase](../resources/attachmentbase.md).|

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

