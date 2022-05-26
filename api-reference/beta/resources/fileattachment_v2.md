---
title: "fileAttachment_v2 resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileAttachment_v2 resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A file (such as a text file or Word document) attached to a [todoTask](./todotask.md).

When creating a file attachment, include the following in the request body:
* `"@odata.type": "#microsoft.graph.fileAttachment_v2"`
* The required properties **name** and **contentBytes**.

Inherits from [attachment_v2](../resources/attachment_v2.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/attachment_v2-get.md)|[fileAttachment_v2](../resources/fileattachment_v2.md)|Read the properties and relationships of a [fileAttachment_v2](../resources/fileattachment_v2.md) object.|
|[Delete](../api/attachment_v2-delete.md)|None|Deletes a [fileAttachment_v2](../resources/fileattachment_v2.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary| Content of the file attachment.|
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
  "@odata.type": "microsoft.graph.fileAttachment_v2",
  "baseType": "microsoft.graph.attachment_v2",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileAttachment_v2",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "contentType": "String",
  "size": "Integer",
  "contentBytes": "Binary"
}
```

