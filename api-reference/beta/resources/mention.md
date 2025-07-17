---
title: "mention resource type"
description: "Represents a notification to a person based on the person's email address."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# mention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a notification to a person based on the person's email address. This type of notification is also known as @-mentions.

The [message](../resources/message.md) resource supports **mention**. It includes a
**mentionsPreview** property that indicates whether the signed-in user is mentioned in that message instance. It also
includes the **mentions** navigation property, which supports getting details of a mention, or deleting a mention in that instance.

When creating a message, an app can create a mention in the same `POST` request by including the mention in 
the **mentions** property. Using a `GET` request with the `$filter` query parameter, an app can return 
all the messages in the signed-in user's mailbox that mention the user. A `GET` request with
the `$expand` query parameter lets the app expand all mentions in a specific message.

This mechanism of letting an app set and get mentions in messages enables lightweight notifications, where the
user making the mention can remain in the existing context (such as composing a message body) while the app sets 
the underlying **mentions** property. Mentioned persons can easily find out if and where they are mentioned 
through `GET` requests with the `$filter` or `$expand` query parameter.  

For example, in the Outlook mail client, when a user types `@` while writing a message, 
Outlook lets the user select or enter a name to complete the @-mention. Outlook sets the **mentions** property before it creates and sends the message or event. Outlook also uses `GET` operations with `$filter` and `$expand` to let the 
signed-in user look up messages that mention the user, alerting the user to action items 
or discussions, which allows for a faster response.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Post](../api/user-sendmail.md#request-2) and send | None | Create and send mentions as part of a new message.|
|[Post](../api/user-post-messages.md#request-2) to a new draft | [message](../resources/message.md) that contains one or more **mention** objects. | Create a draft of a new message and include one or more **mention** objects.|
|[Get](../api/user-list-messages.md#request-2) messages mentioning me | [message](../resources/message.md) collection | Get all the messages in the signed-in user's mailbox that contain a **mention** of this user.|
|[Get](../api/message-get.md#example-2-get-all-mentions-in-a-specific-message) a message and its mentions | [message](../resources/message.md) collection | Get a message and expand the details of each **mention** in the message.|
|[Delete](../api/message-delete.md#request-2) a mention | None |Delete the specified mention in the specified message in the signed-in user's mailbox. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|application | String | The name of the application where the mention is created. Optional. Not used and defaulted as null for **message**. |
|clientReference | String | A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for **message**. |
|createdBy  | [emailAddress](../resources/emailaddress.md) | The email information of the user who made the mention. |
|createdDateTime  |DateTimeOffset |The date and time that the mention is created on the client. |
|deepLink | String | A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for **message**. |
|id | String| The unique identifier of a mention in a resource instance.|
|mentioned | [emailAddress](../resources/emailaddress.md) | The email information of the mentioned person. Required. |
|mentionText | String | Optional. Not used and defaulted as null for **message**. To get the mentions in a message, see the **bodyPreview** property of the message instead. |
|serverCreatedDateTime | DateTimeOffset | The date and time that the mention is created on the server. Optional. Not used and defaulted as null for **message**. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.mention"
}-->

```json
{
  "application": "string",
  "clientReference": "string",
  "createdBy": {"@odata.type": "microsoft.graph.emailAddress"},
  "createdDateTime": "DateTimeOffset",
  "deepLink": "string",
  "id": "string (identifier)",
  "mentioned": {"@odata.type": "microsoft.graph.emailAddress"},
  "mentionText": "string",
  "serverCreatedDateTime": "DateTimeOffset"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "mention resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


