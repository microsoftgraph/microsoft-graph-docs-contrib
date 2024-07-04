---
title: "Create virtualEventSession"
description: "Create a new virtualEventSession object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create virtualEventSession

Namespace: microsoft.graph



Create a new virtualEventSession object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventtownhall-post-sessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventtownhall-post-sessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/virtualEvents/events/{virtualEventId}/sessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [virtualEventSession](../resources/virtualeventsession.md) object.

You can specify the following properties when creating a **virtualEventSession**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|joinWebUrl|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|subject|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|audioConferencing|[audioConferencing](../resources/audioconferencing.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|videoTeleconferenceId|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|joinMeetingIdSettings|[joinMeetingIdSettings](../resources/joinmeetingidsettings.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|joinInformation|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|lobbyBypassSettings|[lobbyBypassSettings](../resources/lobbybypasssettings.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|isEntryExitAnnounced|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|allowedPresenters|onlineMeetingPresenters|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). The possible values are: `everyone`, `organization`, `roleIsPresenter`, `organizer`, `unknownFutureValue`. Optional.|
|allowAttendeeToEnableMic|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|allowAttendeeToEnableCamera|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|allowMeetingChat|meetingChatMode|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). The possible values are: `enabled`, `disabled`, `limited`, `unknownFutureValue`. Optional.|
|allowTeamworkReactions|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|shareMeetingChatHistoryDefault|meetingChatHistoryDefaultMode|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). The possible values are: `none`, `all`, `unknownFutureValue`. Optional.|
|allowParticipantsToChangeName|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|recordAutomatically|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|watermarkProtection|[watermarkProtectionValues](../resources/watermarkprotectionvalues.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md). Optional.|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Optional.|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualEventSession](../resources/virtualeventsession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualeventsession_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/solutions/virtualEvents/events/{virtualEventId}/sessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualEventSession",
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
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualEventSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

