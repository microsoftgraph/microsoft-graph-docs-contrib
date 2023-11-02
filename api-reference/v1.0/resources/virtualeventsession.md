---
title: "virtualEventSession resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualEventSession resource type

Namespace: microsoft.graph



**TODO: Add Description**


Inherits from [onlineMeetingBase](../resources/onlinemeetingbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualEventSessions](../api/virtualevent-list-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md) collection|Get a list of the [virtualEventSession](../resources/virtualeventsession.md) objects and their properties.|
|[Create virtualEventSession](../api/virtualevent-post-sessions.md)|[virtualEventSession](../resources/virtualeventsession.md)|Create a new [virtualEventSession](../resources/virtualeventsession.md) object.|
|[Get virtualEventSession](../api/virtualeventsession-get.md)|[virtualEventSession](../resources/virtualeventsession.md)|Read the properties and relationships of a [virtualEventSession](../resources/virtualeventsession.md) object.|
|[Update virtualEventSession](../api/virtualeventsession-update.md)|[virtualEventSession](../resources/virtualeventsession.md)|Update the properties of a [virtualEventSession](../resources/virtualeventsession.md) object.|
|[Delete virtualEventSession](../api/virtualevent-delete-sessions.md)|None|Delete a [virtualEventSession](../resources/virtualeventsession.md) object.|
|[List attendanceReports](../api/virtualeventsession-list-attendancereports.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Get the meetingAttendanceReport resources from the attendanceReports navigation property.|
|[Create meetingAttendanceReport](../api/virtualeventsession-post-attendancereports.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md)|Create a new meetingAttendanceReport object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAttendeeToEnableCamera|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|allowAttendeeToEnableMic|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|allowedPresenters|onlineMeetingPresenters|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).The possible values are: `everyone`, `organization`, `roleIsPresenter`, `organizer`, `unknownFutureValue`.|
|allowMeetingChat|meetingChatMode|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).The possible values are: `enabled`, `disabled`, `limited`, `unknownFutureValue`.|
|allowParticipantsToChangeName|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|allowTeamworkReactions|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|audioConferencing|[audioConferencing](../resources/audioconferencing.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|endDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEntryExitAnnounced|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|joinInformation|[itemBody](../resources/itembody.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|joinMeetingIdSettings|[joinMeetingIdSettings](../resources/joinmeetingidsettings.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|joinWebUrl|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|lobbyBypassSettings|[lobbyBypassSettings](../resources/lobbybypasssettings.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|recordAutomatically|Boolean|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|shareMeetingChatHistoryDefault|meetingChatHistoryDefaultMode|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).The possible values are: `none`, `all`, `unknownFutureValue`.|
|startDateTime|[dateTimeTimeZone](../resources/intune-datetimetimezone.md)|**TODO: Add Description**|
|subject|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|videoTeleconferenceId|String|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|
|watermarkProtection|[watermarkProtectionValues](../resources/watermarkprotectionvalues.md)|**TODO: Add Description** Inherited from [onlineMeetingBase](../resources/onlinemeetingbase.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.onlineMeetingBase](../resources/onlinemeetingbase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventSession",
  "baseType": "microsoft.graph.onlineMeetingBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventSession",
  "id": "String (identifier)",
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

