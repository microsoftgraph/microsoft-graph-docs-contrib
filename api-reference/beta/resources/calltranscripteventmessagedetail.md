---
title: "callTranscriptEventMessageDetail resource type"
description: "Represents details for call transcript event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callTranscriptEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call transcript event message.
This message is generated when transcript is available for a call.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|callTranscriptICalUid|String|Unique identifier for a call transcript.|
|meetingOrganizer|[identitySet](../resources/identityset.md)|The organizer of the meeting.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callTranscriptEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callTranscriptEventMessageDetail",
  "callId": "String",
  "callTranscriptICalUid": "String",
  "meetingOrganizer": {
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
		"@odata.type": "#microsoft.graph.callTranscriptEventMessageDetail",
		"callId": "5b927778-760b-429e-8c4e-65b1802dd6c9",
		"callTranscriptICalUid": "040000008200E00074C5B7101A82E00800000000002C743F89CDD601000000000000000010000000CA87F90D9372ED45A399B5D75E854EE9 ",
		"meetingOrganizer": {
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