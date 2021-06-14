---
title: "teamArchivedEventMessageDetail resource type"
description: "Represents details for team archived event message"
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamArchivedEventMessageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details for team archived event message.
This message is generated when a team is archived.


Inherits from [eventMessageDetail](../resources/eventmessagedetail.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|initiator|[identitySet](../resources/identityset.md)|Initiator of the event.|
|teamId|String|Unique identifier of the team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamArchivedEventMessageDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamArchivedEventMessageDetail",
  "teamId": "String",
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
  "id": "1623677858199",
  "replyToId": null,
  "etag": "1623677858199",
  "messageType": "systemEventMessage",
  "createdDateTime": "2021-06-14T13:37:38.199Z",
  "lastModifiedDateTime": "2021-06-14T13:37:38.199Z",
  "lastEditedDateTime": null,
  "deletedDateTime": null,
  "subject": null,
  "summary": null,
  "chatId": null,
  "importance": "normal",
  "locale": "en-us",
  "webUrl": "https://teams.microsoft.com/l/message/19%3A318c8c65f0794971a1a9b5e3413d77de%40thread.tacv2/1623677858199?groupId=5e91c375-f755-4882-880e-f1b9322faa87&tenantId=df81db53-c7e2-418a-8803-0e68d4b88607&createdTime=1623677858199&parentMessageId=1623677858199",
  "from": null,
  "policyViolation": null,
  "body": {
    "contentType": "html",
    "content": "<systemEventMessage/>"
  },
  "channelIdentity": {
    "teamId": "5e91c375-f755-4882-880e-f1b9322faa87",
    "channelId": "19:318c8c65f0794971a1a9b5e3413d77de@thread.tacv2"
  },
  "attachments": [],
  "mentions": [],
  "reactions": [],
  "eventDetail": {
    "@odata.type": "#microsoft.graph.teamArchivedEventMessageDetail",
    "teamId": "5e91c375-f755-4882-880e-f1b9322faa87",
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