---
title: "teamsAppInstalledEventMessageDetail resource type"
description: "Represents details for teams app installed event message."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppInstalledEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for teams app installed event message.
This message is generated when a teamsApp is removed from a channel, a chat or a team.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamsAppDisplayName|String|Name of the teamsApp.|
|teamsAppId|String|Unique identifier of the teamsApp.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppInstalledEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppInstalledEventMessageDetail",
  "teamsAppId": "String",
  "teamsAppDisplayName": "String",
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
  "id": "1620046494994",
  "replyToId": null,
  "etag": "1620046494994",
  "messageType": "systemEventMessage",
  "createdDateTime": "2021-05-03T12:54:54.994Z",
  "lastModifiedDateTime": "2021-05-03T12:54:54.994Z",
  "lastEditedDateTime": null,
  "deletedDateTime": null,
  "subject": null,
  "summary": null,
  "chatId": null,
  "importance": "normal",
  "locale": "en-us",
  "webUrl": "https://teams.microsoft.com/l/message/19%3Ad0891bf6638f48e8be186e2e92b4a554%40thread.tacv2/1620046494994?groupId=97a5ecc4-300b-4c5a-9f87-ca9a4969b3e0&tenantId=df81db53-c7e2-418a-8803-0e68d4b88607&createdTime=1620046494994&parentMessageId=1620046494994",
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
    "@odata.type": "#microsoft.graph.teamsAppInstalledEventMessageDetail",
    "teamsAppId": "aa5fe6c5-f91c-45ed-88de-640e235ad21b",
    "teamsAppDisplayName": "Flipgrid",
    "initiator": {
      "application": null,
      "device": null,
      "user": {
        "id": "06a5b888-ad96-455e-88ef-c059ec4e4cf0",
        "displayName": null,
        "userIdentityType": "aadUser"
      }
    }
  }
}
```