---
title: "attachment resource type"
description: "The base type for several types of attachments on a user, message, task, or group post."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "outlook"
author: "SuryaLashmiS"
ms.date: 08/08/2024
---

# attachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base type for several types of attachments on a user, message, task, or group post that serves as the base resource for the following derived types of attachments:

* A file ([fileAttachment](../resources/fileattachment.md) resource)
* An item (contact, event, or message, represented by an [itemAttachment](../resources/itemattachment.md) resource)
* A link to a file ([referenceAttachment](../resources/referenceattachment.md) resource)

You can add related content to a user [event](../resources/event.md),
[message](../resources/message.md), [Outlook task](../resources/outlooktask.md), or group [post](../resources/post.md) in the form of an attachment.

[!INCLUDE [outlooktask-deprecate-sharedfeature](../../includes/outlooktask-deprecate-sharedfeature.md)]

Events in group calendars do not support attachments.

Outlook tasks do not support reference attachments.

>**Note**: If you're attaching a file to a group post, or attaching an item to an event, message, or group post, limit the size of the attachment to 3 MB.
>
> If you're attaching a file under 3 MB, you can [add the file attachment to a user event](../api/event-post-attachments.md), [to a message](../api/message-post-attachments.md), or [to a group post](../api/post-post-attachments.md).
>
> If you're attaching a file between 3 MB and 150 MB to an event or message, you can [create an upload session](../api/attachment-createuploadsession.md) and iteratively upload ranges of the file to attach it. See [attach large files to Outlook messages](/graph/outlook-large-attachments) for an example.


## Methods

The following methods apply to any of the derived types of attachments (**fileAttachment**, **itemAttachment**, or **referenceAttachment**).

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment-get.md) | [attachment](attachment.md) |Read the properties, relationships, or raw contents of an attachment, attached to a user event, message, Outlook task, or post.|
|[Delete](../api/attachment-delete.md) | None |Delete an attachment on an event, message, Outlook task, or post. |
|[Add attachment to a user event](../api/event-post-attachments.md) | [attachment](attachment.md) |Add a file, item, or link attachment to an event in a user calendar. This operation limits the size of the attachment you can add to under 3 MB.|
|[Add attachment to a message](../api/message-post-attachments.md) | [attachment](attachment.md) |Add a file, item, or link attachment to a message. This operation limits the size of the attachment you can add to under 3 MB.|
|[Create session to attach large file](../api/attachment-createuploadsession.md)| [uploadSession](uploadsession.md) | Create an upload session that allows an app to iteratively upload ranges of a file, so as to attach the file to the specified **message** or **event**. The file size must be between 3 MB and 150 MB.|
|[Add attachment to an Outlook task](../api/outlooktask-post-attachments.md) (deprecated) | [attachment](attachment.md) |Add a file or item attachment to an Outlook task.|
|[Add attachment to a post](../api/post-post-attachments.md) | [attachment](attachment.md) |Add a file, item, or link attachment to a group post. This operation limits the size of the attachment you can add to under 3 MB.|
|[List attachments of a user event](../api/event-list-attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for an event in a user calendar. |
|[List attachments of a message](../api/message-list-attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for a message. |
|[List attachments of an Outlook task](../api/outlooktask-list-attachments.md) (deprecated) | [attachment](attachment.md) collection | Get a list of attachments for an Outlook task. |
|[List attachments of a post](../api/post-list-attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for a post. |

## Properties

The following are the base properties of any attachment resource. Refer to the specific type of attachment ([fileAttachment](../resources/fileattachment.md),
[itemAttachment](../resources/itemattachment.md), or [referenceAttachment](../resources/referenceattachment.md)) for additional properties.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The MIME type.|
|id|String| Read-only.|
|isInline|Boolean|`true` if the attachment is an inline attachment; otherwise, `false`.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|name|String|The display name of the attachment. This does not need to be the actual file name.|
|size|Int32|The length of the attachment in bytes.|

## Relationships
None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attachment"
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
<!--
{
  "type": "#page.annotation",
  "description": "attachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


