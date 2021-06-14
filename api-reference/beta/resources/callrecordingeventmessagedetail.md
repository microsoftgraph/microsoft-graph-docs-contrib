---
title: "callRecordingEventMessageDetail resource type"
description: "Represents details for call recording event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# callRecordingEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for call recording event message.
This message is generated when a call recording is started.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callId|String|Unique identifier of the call.|
|callRecordingDisplayName|String|Display name for the call recording.|
|callRecordingDuration|Duration|Duration of the call recording.|
|callRecordingStatus|callRecordingStatus|Status of the call recording. Possible values are: `success`, `failure`, `initial`, `chunkFinished`.|
|callRecordingUrl|String|Call recording URL.|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|meetingOrganizer|[identitySet](../resources/identityset.md)|Organizer of the meeting.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecordingEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecordingEventMessageDetail",
  "callId": "String",
  "callRecordingDisplayName": "String",
  "callRecordingUrl": "String",
  "callRecordingDuration": "String (duration)",
  "callRecordingStatus": "String",
  "meetingOrganizer": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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
		"@odata.type": "#microsoft.graph.callRecordingEventMessageDetail",
		"callId": "c86c6052-410b-4e7c-b843-9a09f576e4d5",
		"callRecordingDisplayName": "Meeting Recording.mp4",
		"callRecordingUrl": "https://testtenant.sharepoint.com/sites/TestTeam/Shared%20Documents/General/Recordings/Meeting%20Recording.mp4?web=1",
		"callRecordingDuration": "PT40M19.26S",
		"callRecordingStatus": "success",
		"meetingOrganizer": {
			"application": null,
			"device": null,
			"conversation": null,
			"user": {
				"id": "1fb8890f-423e-4154-8fbf-db6809bc8756",
				"displayName": null,
				"userIdentityType": "aadUser"
			}
		},
		"initiator": {
			"application": null,
			"device": null,
			"conversation": null,
			"user": {
				"id": "1fb8890f-423e-4154-8fbf-db6809bc8756",
				"displayName": null,
				"userIdentityType": "aadUser"
			}
		}
	}
}
```