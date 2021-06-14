---
title: "teamDescriptionUpdatedEventMessageDetail resource type"
description: "Represents details for team description updated event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamDescriptionUpdatedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team description updated event message.
This message is generated when team's description is updated.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamDescription|String|Updated description for the team.|
|teamId|String|Unique identifier of the team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamDescriptionUpdatedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamDescriptionUpdatedEventMessageDetail",
  "teamId": "String",
  "teamDescription": "String",
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
	"id": "1618907417096",
	"replyToId": null,
	"etag": "1618907417096",
	"messageType": "systemEventMessage",
	"createdDateTime": "2021-04-20T08:30:17.096Z",
	"lastModifiedDateTime": "2021-04-20T08:30:17.096Z",
	"lastEditedDateTime": null,
	"deletedDateTime": null,
	"subject": null,
	"summary": null,
	"chatId": null,
	"importance": "normal",
	"locale": "en-us",
	"webUrl": "https://teams.microsoft.com/l/message/19%3Ad0891bf6638f48e8be186e2e92b4a554%40thread.tacv2/1618907417096?groupId=97a5ecc4-300b-4c5a-9f87-ca9a4969b3e0&tenantId=df81db53-c7e2-418a-8803-0e68d4b88607&createdTime=1618907417096&parentMessageId=1618907417096",
	"from": null,
	"policyViolation": null,
	"body": {
		"contentType": "html",
		"content": "<systemEventMessage/>"
	},
	"channelIdentity": {
		"teamId": "97a5ecc4-300b-4c5a-9f87-ca9a4969b3e0",
		"channelId": "19:d0891bf6638f48e8be186e2e92b4a554@thread.tacv2"
	},
	"attachments": [],
	"mentions": [],
	"reactions": [],
	"eventDetail": {
		"@odata.type": "#microsoft.graph.teamDescriptionUpdatedEventMessageDetail",
		"teamId": "97a5ecc4-300b-4c5a-9f87-ca9a4969b3e0",
		"teamDescription": "User 4 Team",
		"initiator": {
			"application": null,
			"device": null,
			"user": {
				"id": "9ee3dc1b-6a70-4582-8bc5-5dd35336b6c3",
				"displayName": null,
				"userIdentityType": "aadUser"
			}
		}
	}
}
```