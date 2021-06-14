---
title: "membersJoinedEventMessageDetail resource type"
description: "Represents details for members joined event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# membersJoinedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for members joined event message.
This message is generated when members join a meeting chat.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[identity](../resources/identity.md) collection|List of members who joined the chat.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersJoinedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersJoinedEventMessageDetail",
  "members": [
    {
      "@odata.type": "microsoft.graph.identity"
    }
  ],
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
	"id": "1620050140712",
	"replyToId": null,
	"etag": "1620050140712",
	"messageType": "systemEventMessage",
	"createdDateTime": "2021-05-03T13:55:40.712Z",
	"lastModifiedDateTime": "2021-05-03T13:55:40.712Z",
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
		"@odata.type": "#microsoft.graph.membersJoinedEventMessageDetail",
		"members": [{
			"@odata.type": "#microsoft.graph.teamworkUserIdentity",
			"id": "2c3f5f34-ac9f-42e7-8b35-442ccac166cb",
			"displayName": "Alex (Guest)",
			"userIdentityType": "aadUser"
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