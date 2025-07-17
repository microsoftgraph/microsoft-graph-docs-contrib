---
title: "referenceAttachment resource type"
description: "A link to a file, such as a text file or Word document, on a OneDrive for work or school cloud drive or other supported storage location, attached to an event, message, or post."
ms.localizationpriority: medium
ms.subservice: "outlook"
author: "SuryaLashmiS"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# referenceAttachment resource type

Namespace: microsoft.graph

A link to a file, such as a text file or Word document, on a OneDrive for work or school cloud drive or other supported storage locations, attached to an event, message, or post.

Derived from [attachment](attachment.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment-get.md) | [referenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Delete](../api/attachment-delete.md) | None |Delete referenceAttachment object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The content type of the attachment. Returned as `null` by default, when not set explicitly. Optional.|
|id|String|The attachment ID. Read-only.|
|isInline|Boolean|Set to true if the attachment appears inline in the body of the embedding object.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|name|String|The text that is displayed below the icon representing the embedded attachment. This value doesn't need to be the actual file name.|
|size|Int32|The size of the metadata that is stored on the message for the attachment in bytes. This value doesn't indicate the size of the actual file.|

## Relationships
None



## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.attachment",
  "keyProperty":"id",
  "@odata.type": "microsoft.graph.referenceAttachment"
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "referenceAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

