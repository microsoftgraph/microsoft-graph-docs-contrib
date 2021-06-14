---
title: "meetingPolicyUpdatedEventMessageDetail resource type"
description: "Represents details for meeting policy updated event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# meetingPolicyUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for meeting policy updated event message.
This message is generated when meeting option **Allow meeting chat** is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|meetingChatEnabled|Boolean|Represents if the meeting chat is enabled or not.|
|meetingChatId|String|Unique identifier of the meeting chat.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingPolicyUpdatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.meetingPolicyUpdatedEventMessageDetail",
  "meetingChatId": "String",
  "meetingChatEnabled": "Boolean",
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
	"id": "1620732126822",
	"replyToId": null,
	"etag": "1620732126822",
	"messageType": "systemEventMessage",
	"createdDateTime": "2021-05-11T11:22:06.822Z",
	"lastModifiedDateTime": "2021-05-11T11:22:06.822Z",
	"lastEditedDateTime": null,
	"deletedDateTime": null,
	"subject": null,
	"summary": null,
	"chatId": "19:meeting_OTFkNDQzMjMtZWQyYi00ZjI4LTk1ZmUtZmI2NjBmNTFmMzg1@thread.v2",
	"importance": "normal",
	"locale": "en-us",
	"webUrl": null,
	"from": null,
	"channelIdentity": null,
	"policyViolation": null,
	"body": {
		"contentType": "html",
		"content": "<systemEventMessage/>"
	},
	"attachments": [],
	"mentions": [],
	"reactions": [],
	"eventDetail": {
		"@odata.type": "#microsoft.graph.meetingPolicyUpdatedEventMessageDetail",
		"meetingChatId": "19:meeting_OTFkNDQzMjMtZWQyYi00ZjI4LTk1ZmUtZmI2NjBmNTFmMzg1@thread.v2",
		"meetingChatEnabled": true,
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