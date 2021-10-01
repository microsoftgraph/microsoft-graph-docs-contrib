---
title: "onlineMeeting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# onlineMeeting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onlineMeetings](../api/onlinemeeting-list.md)|[onlineMeeting](../resources/onlinemeeting.md) collection|Get a list of the [onlineMeeting](../resources/onlinemeeting.md) objects and their properties.|
|[Create onlineMeeting](../api/onlinemeeting-create.md)|[onlineMeeting](../resources/onlinemeeting.md)|Create a new [onlineMeeting](../resources/onlinemeeting.md) object.|
|[Get onlineMeeting](../api/onlinemeeting-get.md)|[onlineMeeting](../resources/onlinemeeting.md)|Read the properties and relationships of an [onlineMeeting](../resources/onlinemeeting.md) object.|
|[Update onlineMeeting](../api/onlinemeeting-update.md)|[onlineMeeting](../resources/onlinemeeting.md)|Update the properties of an [onlineMeeting](../resources/onlinemeeting.md) object.|
|[Delete onlineMeeting](../api/onlinemeeting-delete.md)|None|Deletes an [onlineMeeting](../resources/onlinemeeting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessLevel|accessLevel|**TODO: Add Description**. The possible values are: `everyone`, `invited`, `locked`, `sameEnterprise`, `sameEnterpriseAndFederated`.|
|allowAttendeeToEnableCamera|Boolean|**TODO: Add Description**|
|allowAttendeeToEnableMic|Boolean|**TODO: Add Description**|
|allowedPresenters|onlineMeetingPresenters|**TODO: Add Description**. The possible values are: `everyone`, `organization`, `roleIsPresenter`, `organizer`, `unknownFutureValue`.|
|allowMeetingChat|meetingChatMode|**TODO: Add Description**. The possible values are: `enabled`, `disabled`, `limited`, `unknownFutureValue`.|
|allowTeamworkReactions|Boolean|**TODO: Add Description**|
|alternativeRecording|Stream|**TODO: Add Description**|
|attendeeReport|Stream|**TODO: Add Description**|
|audioConferencing|[audioConferencing](../resources/audioconferencing.md)|**TODO: Add Description**|
|broadcastSettings|[broadcastMeetingSettings](../resources/broadcastmeetingsettings.md)|**TODO: Add Description**|
|canceledDateTime|DateTimeOffset|**TODO: Add Description**|
|capabilities|meetingCapabilities collection|**TODO: Add Description**|
|chatInfo|[chatInfo](../resources/chatinfo.md)|**TODO: Add Description**|
|creationDateTime|DateTimeOffset|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|entryExitAnnouncement|Boolean|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isBroadcast|Boolean|**TODO: Add Description**|
|isCancelled|Boolean|**TODO: Add Description**|
|isEntryExitAnnounced|Boolean|**TODO: Add Description**|
|joinInformation|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|joinUrl|String|**TODO: Add Description**|
|lobbyBypassSettings|[lobbyBypassSettings](../resources/lobbybypasssettings.md)|**TODO: Add Description**|
|participants|[meetingParticipants](../resources/meetingparticipants.md)|**TODO: Add Description**|
|recordAutomatically|Boolean|**TODO: Add Description**|
|recording|Stream|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|state|meetingState|**TODO: Add Description**. The possible values are: `inactive`, `active`, `unknownFutureValue`.|
|subject|String|**TODO: Add Description**|
|videoTeleconferenceId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activeParticipants|[activeMeetingParticipant](../resources/activemeetingparticipant.md) collection|**TODO: Add Description**|
|meetingAttendanceReport|[meetingAttendanceReport](../resources/meetingattendancereport.md)|**TODO: Add Description**|
|permissionGrants|[resourceSpecificPermissionGrant](../resources/resourcespecificpermissiongrant.md) collection|**TODO: Add Description**|
|registration|[meetingRegistration](../resources/meetingregistration.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onlineMeeting",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onlineMeeting",
  "id": "String (identifier)",
  "accessLevel": "String",
  "allowAttendeeToEnableCamera": "Boolean",
  "allowAttendeeToEnableMic": "Boolean",
  "allowedPresenters": "String",
  "allowMeetingChat": "String",
  "allowTeamworkReactions": "Boolean",
  "alternativeRecording": "Stream",
  "attendeeReport": "Stream",
  "audioConferencing": {
    "@odata.type": "microsoft.graph.audioConferencing"
  },
  "broadcastSettings": {
    "@odata.type": "microsoft.graph.broadcastMeetingSettings"
  },
  "canceledDateTime": "String (timestamp)",
  "capabilities": [
    "String"
  ],
  "chatInfo": {
    "@odata.type": "microsoft.graph.chatInfo"
  },
  "creationDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "entryExitAnnouncement": "Boolean",
  "expirationDateTime": "String (timestamp)",
  "externalId": "String",
  "isBroadcast": "Boolean",
  "isCancelled": "Boolean",
  "isEntryExitAnnounced": "Boolean",
  "joinInformation": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "joinUrl": "String",
  "lobbyBypassSettings": {
    "@odata.type": "microsoft.graph.lobbyBypassSettings"
  },
  "participants": {
    "@odata.type": "microsoft.graph.meetingParticipants"
  },
  "recordAutomatically": "Boolean",
  "recording": "Stream",
  "startDateTime": "String (timestamp)",
  "state": "String",
  "subject": "String",
  "videoTeleconferenceId": "String"
}
```

