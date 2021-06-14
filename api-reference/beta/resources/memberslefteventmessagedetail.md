---
title: "membersLeftEventMessageDetail resource type"
description: "Represents details for members left event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# membersLeftEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for members left event message.
This message is generated when members leave a meeting chat.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|members|[identity](../resources/identity.md) collection|List of members who left the chat.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.membersLeftEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.membersLeftEventMessageDetail",
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
  "id": "1620049976741",
  "replyToId": null,
  "etag": "1620049976741",
  "messageType": "systemEventMessage",
  "createdDateTime": "2021-05-03T13:52:56.741Z",
  "lastModifiedDateTime": "2021-05-03T13:52:56.741Z",
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
    "@odata.type": "#microsoft.graph.membersLeftEventMessageDetail",
    "members": [{
      "@odata.type": "#microsoft.graph.teamworkUserIdentity",
      "id": "ee8af8acd3184068a935a1f207865620",
      "displayName": "Alex (Guest)",
      "userIdentityType": "anonymousGuest"
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