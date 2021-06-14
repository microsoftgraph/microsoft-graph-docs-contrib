---
title: "channelAddedEventMessageDetail resource type"
description: "Represents details for a channel added event"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelAddedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details a channel added event message.
This message is generated when a standard channel is added to a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelDisplayName|String|Display name of the channel.|
|channelId|String|Unique identifier of the channel.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelAddedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelAddedEventMessageDetail",
  "channelId": "String",
  "channelDisplayName": "String",
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
	"id": "1616883610266",
	"replyToId": null,
	"etag": "1616883610266",
	"messageType": "systemEventMessage",
	"createdDateTime": "2021-03-28T03:50:10.266Z",
	"lastModifiedDateTime": "2021-03-28T03:50:10.266Z",
	"lastEditedDateTime": null,
	"deletedDateTime": null,
	"subject": null,
	"summary": null,
	"chatId": null,
	"importance": "normal",
	"locale": "en-us",
	"webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616883610266?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616883610266&parentMessageId=1616883610266",
	"policyViolation": null,
	"from": null,
	"body": {
		"contentType": "html",
		"content": "<systemEventMessage/>"
	},
	"channelIdentity": {
		"teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
		"channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
	},
	"attachments": [],
	"mentions": [],
	"reactions": [],
	"eventDetail": {
		"@odata.type": "#microsoft.graph.channelAddedEventMessageDetail",
		"channelId": "19:e84f079882f44fa8bebb7343b9e8921a@thread.tacv2",
		"channelDisplayName": "Standard channel",
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