---
title: "callEndedEventMessageDetail resource type"
description: "Represents details for call ended event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callEndedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call ended event message.
This message is generated when a call has ended.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callDuration|Duration|Duration of the call.|
|callId|String|Unique identifier of the call.|
|callParticipants|[callParticipantInfo](../resources/callparticipantinfo.md) collection|List of call participants.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callEndedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callEndedEventMessageDetail",
  "callId": "String",
  "callParticipants": [
    {
      "@odata.type": "microsoft.graph.callParticipantInfo"
    }
  ],
  "initiator": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "callDuration": "String (duration)"
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
		"@odata.type": "#microsoft.graph.callEndedEventMessageDetail",
		"callId": "9c848c0e-f906-4dfc-b22e-c68a785a587c",
		"callDuration": "PT59S",
		"callParticipants": [{
			"participant": {
				"application": null,
				"device": null,
				"user": {
					"id": "1fb8890f-423e-4154-8fbf-db6809bc8756",
					"displayName": "Adele Vance ",
					"userIdentityType": "aadUser"
				}
			}
		}],
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
