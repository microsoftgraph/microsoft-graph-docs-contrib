---
title: "List sessions"
description: "Get the virtualEventSession resources from the sessions navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List sessions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the virtualEventSession resources from the sessions navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-list-sessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-list-sessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/events/{virtualEventId}/sessions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [virtualEventSession](../resources/virtualeventsession.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_virtualeventsession"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/virtualEvents/events/{virtualEventId}/sessions
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.virtualEventSession)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.virtualEventSession",
      "id": "5d14c090-1e97-a9ce-a3e9-f0eb1b6d37ed",
      "joinWebUrl": "String",
      "subject": "String",
      "isEndToEndEncryptionEnabled": "Boolean",
      "audioConferencing": {
        "@odata.type": "microsoft.graph.audioConferencing"
      },
      "chatInfo": {
        "@odata.type": "microsoft.graph.chatInfo"
      },
      "videoTeleconferenceId": "String",
      "joinInformation": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "joinMeetingIdSettings": {
        "@odata.type": "microsoft.graph.joinMeetingIdSettings"
      },
      "lobbyBypassSettings": {
        "@odata.type": "microsoft.graph.lobbyBypassSettings"
      },
      "isEntryExitAnnounced": "Boolean",
      "allowedPresenters": "String",
      "allowAttendeeToEnableMic": "Boolean",
      "allowAttendeeToEnableCamera": "Boolean",
      "allowMeetingChat": "String",
      "shareMeetingChatHistoryDefault": "String",
      "allowTeamworkReactions": "Boolean",
      "anonymizeIdentityForRoles": [
        "String"
      ],
      "recordAutomatically": "Boolean",
      "watermarkProtection": {
        "@odata.type": "microsoft.graph.watermarkProtectionValues"
      },
      "allowParticipantsToChangeName": "Boolean",
      "allowTranscription": "Boolean",
      "allowRecording": "Boolean",
      "chatRestrictions": {
        "@odata.type": "microsoft.graph.chatRestrictions"
      },
      "startDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "endDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      }
    }
  ]
}
```

