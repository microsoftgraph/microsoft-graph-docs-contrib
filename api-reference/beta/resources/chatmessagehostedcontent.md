---
title: "chatMessageHostedContent resource type"
description: "A content hosted in a chat message"
ms.localizationpriority: medium
author: "RamjotSingh"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# chatMessageHostedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Teams content hosted in a chat message, such as images or code snippets.
[File attachments](chatmessageattachment.md) aren't hosted content;
they're stored in SharePoint or OneDrive.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List hosted content](../api/chatmessage-list-hostedcontents.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) collection | Retrieve the list of **chatMessageHostedContent** for a message. |
| [Get hosted content](../api/chatmessagehostedcontent-get.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Read the properties and relationships of a **chatMessageHostedContent** object. |

## Properties

chatMessageHostedContent derives from [teamworkHostedContent](teamworkhostedcontent.md)

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Read-only. Represents the chat message hosted content identifier.|
|contentBytes  |Edm.Binary   | Write-only. When posting new chat message hosted content, represents the bytes of the payload as a base64 encoded string.|
|contentType   |String       | Write-only. When posting new chat message hosted content, represents the type of content, such as image/png.|

### Instance attributes

Instance attributes are properties with special behaviors.
These properties are temporary and either define behavior the service should perform or provide short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.temporaryId      | string | Write-only. Represents the temporaryId for the hosted content while posting a message to refer to the hosted content in **chatMessage** resource being sent.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "keyProperty": "id"
}-->

```json
{
  "@microsoft.graph.temporaryId": "String (identifier)",
  "id": "String (identifier)",
  "contentBytes": "String (binary)",
  "contentType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessageHostedContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


