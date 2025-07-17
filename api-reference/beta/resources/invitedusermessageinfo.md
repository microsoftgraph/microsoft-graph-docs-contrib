---
title: "invitedUserMessageInfo resource type"
description: "The invitedUserMessageInfo object allows you to configure the invitation message."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "ppolkadots"
ms.date: 03/21/2024
---

# invitedUserMessageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The invitedUserMessageInfo object allows you to configure the [invitation](invitation.md) message.

For more information about configuring the invitation message, see [B2B invitation email layout and language settings](/entra/external-id/invitation-email-elements).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ccRecipients|[recipient](recipient.md) collection|Additional recipients the invitation message should be sent to. Currently only one additional recipient is supported.|
|customizedMessageBody|String|Customized message body you want to send if you don't want the default message. Only plain text is allowed.|
|messageLanguage|String|The language you want to send the default message in. If the customizedMessageBody is specified, this property is ignored, and the message is sent using the customizedMessageBody. The language format should be in ISO 639. The default is en-US.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {"blockType": "resource", "@odata.type": "microsoft.graph.invitedUserMessageInfo"} -->
```json
{
  "ccRecipients": [ {"@odata.type": "microsoft.graph.recipient"} ],
  "customizedMessageBody": "string",
  "messageLanguage": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2016-22-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "invitedUserMessageInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


