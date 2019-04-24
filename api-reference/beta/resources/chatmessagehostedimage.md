---
title: "chatMessageHostedImage resource type"
description: "Represents an image inside a chatMessage."
localization_priority: Priority
---

# chatMessage resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a hosted image inside a [chatMessage](../resources/chatmessage.md).

Hosted images are the images that appear in the message's body.content in an <img> tag with a src attribute that starts with `https://graph.microsoft.com`.

Not all images in a message are hosted images.
Microsoft Teams also supports public images (where the img src is a public website). 
Microsoft Teams does not currently support [Data URLs](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) but may add this in the future.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List hosted images](../api/channel-list-messages.md) | [chatmessage](chatmessage.md) collection | Get the list of all root messages in a channel.|
|[Get hosted image](../api/channel-get-message.md) | [chatmessage](chatmessage.md) | Get a single root message from a channel.|
|[Get hosted image bytes](../api/channel-get-message.md) | [chatmessage](chatmessage.md) | Get a single root message from a channel.|

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only. Unique ID of the message.|
|url| string | The url to retrieve the image contents from.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.chatMessageHostedImage"
}-->

```json
{
  "id": "string (identifier)",
  "url": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chat message resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/chatmessage.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
