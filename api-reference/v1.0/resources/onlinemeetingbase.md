---
title: "onlineMeetingBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onlineMeetingBase resource type

Namespace: microsoft.graph



**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onlineMeetingBases](../api/onlinemeetingbase-list.md)|[onlineMeetingBase](../resources/onlinemeetingbase.md) collection|Get a list of the [onlineMeetingBase](../resources/onlinemeetingbase.md) objects and their properties.|
|[Get onlineMeetingBase](../api/onlinemeetingbase-get.md)|[onlineMeetingBase](../resources/onlinemeetingbase.md)|Read the properties and relationships of an [onlineMeetingBase](../resources/onlinemeetingbase.md) object.|
|[Update onlineMeetingBase](../api/onlinemeetingbase-update.md)|[onlineMeetingBase](../resources/onlinemeetingbase.md)|Update the properties of an [onlineMeetingBase](../resources/onlinemeetingbase.md) object.|
|[Delete onlineMeetingBase](../api/onlinemeetingbase-delete.md)|None|Delete an [onlineMeetingBase](../resources/onlinemeetingbase.md) object.|
|[List attendanceReports](../api/onlinemeetingbase-list-attendancereports.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|Get the meetingAttendanceReport resources from the attendanceReports navigation property.|
|[Create meetingAttendanceReport](../api/onlinemeetingbase-post-attendancereports.md)|[meetingAttendanceReport](../resources/meetingattendancereport.md)|Create a new meetingAttendanceReport object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAttendeeToEnableCamera|Boolean|**TODO: Add Description**|
|allowAttendeeToEnableMic|Boolean|**TODO: Add Description**|
|allowedPresenters|onlineMeetingPresenters|**TODO: Add Description**.The possible values are: `everyone`, `organization`, `roleIsPresenter`, `organizer`, `unknownFutureValue`.|
|allowMeetingChat|meetingChatMode|**TODO: Add Description**.The possible values are: `enabled`, `disabled`, `limited`, `unknownFutureValue`.|
|allowParticipantsToChangeName|Boolean|**TODO: Add Description**|
|allowTeamworkReactions|Boolean|**TODO: Add Description**|
|audioConferencing|[audioConferencing](../resources/audioconferencing.md)|**TODO: Add Description**|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEntryExitAnnounced|Boolean|**TODO: Add Description**|
|joinInformation|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|joinMeetingIdSettings|[joinMeetingIdSettings](../resources/joinmeetingidsettings.md)|**TODO: Add Description**|
|joinWebUrl|String|**TODO: Add Description**|
|lobbyBypassSettings|[lobbyBypassSettings](../resources/lobbybypasssettings.md)|**TODO: Add Description**|
|recordAutomatically|Boolean|**TODO: Add Description**|
|shareMeetingChatHistoryDefault|meetingChatHistoryDefaultMode|**TODO: Add Description**.The possible values are: `none`, `all`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description**|
|videoTeleconferenceId|String|**TODO: Add Description**|
|watermarkProtection|[watermarkProtectionValues](../resources/watermarkprotectionvalues.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|attendanceReports|[meetingAttendanceReport](../resources/meetingattendancereport.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onlineMeetingBase",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onlineMeetingBase",
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
  }
}
```

