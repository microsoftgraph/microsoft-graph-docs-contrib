---
title: "callStartedEventMessageDetail resource type"
description: "Represents details for call started event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callStartedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call started event message.
This message is generated when a call has started.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callStartedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callStartedEventMessageDetail",
  "callId": "String",
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

## Example response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```json
{
	"@odata.type": "#microsoft.graph.chatMessage",
	"id": "1615943825123",
	"replyToId": null,
	"etag": "1615943825123",
	"messageType": "systemEventMessage",
	"createdDateTime": "2021-03-1706:47:05.123Z",
	"lastModifiedDateTime": "2021-03-1706:47:05.123Z",
	"lastEditedDateTime": null,
	"deletedDateTime": null,
	"subject": null,
	"summary": null,
	"chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",
	"importance": "normal",
	"locale": "en-us",
	"webUrl": null,
	"channelIdentity": null,
	"policyViolation": null,
	"from": null,
	"body": {
		"contentType": "html",
		"content": "<systemEventMessage/>"
	},
	"attachments": [],
	"mentions": [],
	"reactions": [],
	"eventDetail": {
		"@odata.type": "#microsoft.graph.callStartedEventMessageDetail",
		"callId": "9c848c0e-f906-4dfc-b22e-c68a785a587c",
		"initiator": {
			"application": null,
			"device": null,
			"user": {
				"id": "1fb8890f-423e-4154-8fbf-db6809bc8756",
				"displayName": null,
				"userIdentityType": "aadUser"
			}
		}
	}
}
```