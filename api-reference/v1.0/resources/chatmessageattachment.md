---
title: "chatMessageAttachment resource type"
description: "Represents an attachment to a chat message entity."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "teams"
author: "RamjotSingh"
ms.date: 10/22/2024
---

# chatMessageAttachment resource type

Namespace: microsoft.graph

Represents an attachment to a chat message entity.

An entity of type **chatMessageAttachment** is returned as part of the [Get channel messages](../api/channel-list-messages.md) API, as a part of [chatMessage](chatmessage.md) entity.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|string|The content of the attachment. If the attachment is a [rich card](/microsoftteams/platform/task-modules-and-cards/cards/cards-reference), set the property to the rich card object. This property and contentUrl are mutually exclusive.|
|contentType| string | The media type of the content attachment. The possible values are: <br><ul><li>`reference`: The attachment is a link to another file. Populate the <b>contentURL</b> with the link to the object.</li><li>`forwardedMessageReference`: The attachment is a reference to a forwarded message. Populate the <b>content</b> with the original message context.</li><li>Any <b>contentType</b> that is supported by the Bot Framework's [Attachment object](/azure/bot-service/rest-api/bot-framework-rest-connector-api-reference?#attachment-object).</li><li>`application/vnd.microsoft.card.codesnippet`: A code snippet. </li><li>`application/vnd.microsoft.card.announcement`: An announcement header. </li>|
|contentUrl|string|The URL for the content of the attachment. |
|id|string| Read-only. The unique ID of the attachment.|
|name|string|The name of the attachment.|
|teamsAppId|string|The ID of the Teams app that is associated with the attachment. The property is used to attribute a Teams message card to the specified app.|
|thumbnailUrl|string|The URL to a thumbnail image that the channel can use if it supports using an alternative, smaller form of **content** or **contentUrl**. For example, if you set **contentType** to application/word and set **contentUrl** to the location of the Word document, you might include a thumbnail image that represents the document. The channel could display the thumbnail image instead of the document. When the user selects the image, the channel would open the document.|

## JSON representation
 The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "thumbnailUrl",
    "content",
    "contentUrl",
	"teamsAppId"
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatMessageAttachment"
}-->

```json
{
  "content": "string",
  "contentType": "string",
  "contentUrl": "string",
  "id": "string (identifier)",
  "name": "string",
  "teamsAppId": "string",
  "thumbnailUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat attachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

