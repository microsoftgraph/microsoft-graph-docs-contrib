---
title: "Get virtualEventSession"
description: "Read the properties and relationships of a virtualEventSession object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get virtualEventSession
Namespace: microsoft.graph



Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsession-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsession-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/events/{virtualEventId}/sessions/{virtualEventSessionId}
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

If successful, this method returns a `200 OK` response code and a [virtualEventSession](../resources/virtualeventsession.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventsession"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/events/{virtualEventId}/sessions/{virtualEventSessionId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.virtualEventSession",
    "id": "5d14c090-1e97-a9ce-a3e9-f0eb1b6d37ed",
    "joinWebUrl": "String",
    "subject": "String",
    "audioConferencing": {
      "@odata.type": "microsoft.graph.audioConferencing"
    },
    "chatInfo": {
      "@odata.type": "microsoft.graph.chatInfo"
    },
    "videoTeleconferenceId": "String",
    "joinMeetingIdSettings": {
      "@odata.type": "microsoft.graph.joinMeetingIdSettings"
    },
    "joinInformation": {
      "@odata.type": "microsoft.graph.itemBody"
    },
    "lobbyBypassSettings": {
      "@odata.type": "microsoft.graph.lobbyBypassSettings"
    },
    "isEntryExitAnnounced": "Boolean",
    "allowedPresenters": "String",
    "allowAttendeeToEnableMic": "Boolean",
    "allowAttendeeToEnableCamera": "Boolean",
    "allowMeetingChat": "String",
    "allowTeamworkReactions": "Boolean",
    "shareMeetingChatHistoryDefault": "String",
    "allowParticipantsToChangeName": "Boolean",
    "recordAutomatically": "Boolean",
    "watermarkProtection": {
      "@odata.type": "microsoft.graph.watermarkProtectionValues"
    },
    "startDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "endDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    }
  }
}
```

