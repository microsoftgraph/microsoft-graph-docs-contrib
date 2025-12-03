---
title: "virtualEventTownhall resource type"
description: "Represents information about a virtual event town hall."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 11/17/2024
---

# virtualEventTownhall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a virtual event town hall.

Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [List](../api/virtualeventsroot-list-townhalls.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) collection | Get the list of all [virtualEventTownhall](../resources/virtualeventtownhall.md) objects created in a tenant. |
| [Create](../api/virtualeventsroot-post-townhalls.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Create a new [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Get](../api/virtualeventtownhall-get.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Read the properties and relationships of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Update](../api/virtualeventtownhall-update.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) | Update the properties of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object. |
| [Publish](../api/virtualeventtownhall-publish.md) | None | Publish a [virtualEventTownhall](../resources/virtualeventtownhall.md).|
| [Cancel](../api/virtualeventtownhall-cancel.md) | None | Cancel a [virtualEventTownhall](../resources/virtualeventtownhall.md).|
| [List by user role](../api/virtualeventtownhall-getbyuserrole.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) collection | Get a list of **virtualEventTownhall** objects where the signed-in user is either the organizer or a coorganizer. |
| [List by user ID and role](../api/virtualeventtownhall-getbyuseridandrole.md) | [virtualEventTownhall](../resources/virtualeventtownhall.md) collection | Get a list of **virtualEventTownhall** objects where the specified user is either the organizer or a coorganizer. |
| [Set external event information](../api/virtualevent-setexternaleventinformation.md) | None | Link external event information to a [virtualEventTownhall](../resources/virtualeventtownhall.md) or [virtualEventWebinar](../resources/virtualeventwebinar.md) by setting an **externalEventId**. ]

## Properties

|Property|Type|Description|
|:---|:---|:---|
| audience | [meetingAudience](#meetingaudience-values) | The audience to whom the town hall is visible. The possible values are: `everyone`, `organization`, `unknownFutureValue`.  |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) collection | Identity information of the coorganizers of the town hall. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information of the creator of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). Read-only. |
| description | [itemBody](../resources/itembody.md) | Description of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the town hall ends. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones). Inherited from [virtualEvent](../resources/virtualevent.md). |
| externalEventInformation | [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) collection | The external information of a town hall. Returned only for event organizers or coorganizers; otherwise, `null`. |
| id | String | Unique identifier of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). Read-only. |
| invitedAttendees | [identity](../resources/identity.md) collection | The attendees invited to the town hall. The supported identities are: [communicationsUserIdentity](../resources/communicationsuseridentity.md) and [communicationsGuestIdentity](../resources/communicationsguestidentity.md). |
| isInviteOnly | Boolean | Indicates whether the town hall is only open to invited people and groups within your organization. The **isInviteOnly** property can only be `true` if the value of the **audience** property is set to `organization`. |
| settings | [virtualEventSettings](../resources/virtualeventsettings.md) | The town hall settings. Inherited from [virtualEvent](../resources/virtualevent.md). |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Date and time when the town hall starts. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones). Inherited from [virtualEvent](../resources/virtualevent.md). |
| status | [virtualEventStatus](#virtualeventstatus-values) | Status of the town hall. The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`. Inherited from [virtualEvent](../resources/virtualevent.md). |

### meetingAudience values

| Value | Description |
| ----- | ----------- |
| everyone | The town hall is open to anyone. Select this choice to include attendees from outside your organization. |
| organization | The town hall is open to people in your organization and guests of your organization. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### virtualEventStatus values

| Value | Description |
| ----- | ----------- |
| draft | The virtual event is in draft and only visible to the organizer. |
| published | The organizer published the virtual event and it's visible to the audience. |
| canceled | The organizer canceled the virtual event. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| presenters | [virtualEventPresenter](../resources/virtualeventpresenter.md) collection | Presenters' information of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md).|
| sessions | [virtualEventSession](../resources/virtualeventsession.md)  collection | Sessions of the town hall. Inherited from [virtualEvent](../resources/virtualevent.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventTownhall",
  "baseType": "microsoft.graph.virtualEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventTownhall",
  "audience": "String",
  "coOrganizers": [{"@odata.type": "microsoft.graph.communicationsUserIdentity"}],
  "createdBy": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "externalEventInformation" : [{"@odata.type": "microsoft.graph.virtualEventExternalInformation"}],
  "id": "String (identifier)",
  "invitedAttendees": [{"@odata.type": "microsoft.graph.identity"}],
  "isInviteOnly": "Boolean",
  "settings": {"@odata.type": "microsoft.graph.virtualEventSettings"},
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}
```
