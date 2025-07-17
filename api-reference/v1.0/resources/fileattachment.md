---
title: "fileAttachment resource type"
description: "A file (such as a text file or Word document) attached to an event, message, or post."
ms.localizationpriority: high
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 09/23/2024
---

# fileAttachment resource type

Namespace: microsoft.graph

A file (such as a text file or Word document) attached to a user [event](../resources/event.md),
[message](../resources/message.md), or [post](../resources/post.md).

When creating a file attachment, include the following in the request body:

* `"@odata.type": "#microsoft.graph.fileAttachment"`
* The required properties **name** and **contentBytes**.

Derived from [attachment](attachment.md).

> [!NOTE]
> Make sure to encode the file content in base64 before assigning it to **contentBytes**.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment-get.md) | [fileAttachment](fileattachment.md) |Read properties, relationships, or raw contents of a **fileAttachment** object.|
|[Delete](../api/attachment-delete.md) | None |Delete a **fileAttachment** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentBytes|Edm.Binary|The base64-encoded contents of the file.|
|contentId|String|The ID of the attachment in the Exchange store.|
|contentLocation|String|Don't use this property as it isn't supported.|
|contentType|String|The content type of the attachment.|
|id|String|The attachment ID.|
|isInline|Boolean|Set to `true` if the attachment is an inline attachment.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified.|
|name|String|The name representing the text that is displayed below the icon representing the embedded attachment and doesn't need to be the actual file name.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
None.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.attachment",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileAttachment"
}-->

```json
{
  "contentBytes": "string (binary)",
  "contentId": "string",
  "contentLocation": "string",
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

