---
title: "virtualEventWebinar resource type"
description: "Contains information about a virtual event webinar."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 11/22/2024
---

# virtualEventWebinar resource type

Namespace: microsoft.graph

Contains information about a virtual event webinar.

Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [List](../api/virtualeventsroot-list-webinars.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get the list of all [virtualEventWebinar](../resources/virtualeventwebinar.md) objects created in a tenant. |
| [Create](../api/virtualeventsroot-post-webinars.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) | Create a [virtualEventWebinar](../resources/virtualeventwebinar.md) object. |
| [Get](../api/virtualeventwebinar-get.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) | Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object. |
| [Update](../api/virtualeventwebinar-update.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) | Update the properties of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object. |
| [Publish](../api/virtualeventwebinar-publish.md) | None | Publish a [virtualEventWebinar](../resources/virtualeventwebinar.md). |
| [Cancel](../api/virtualeventwebinar-cancel.md) | None | Cancel a [virtualEventWebinar](../resources/virtualeventwebinar.md). |
| [List by user role](../api/virtualeventwebinar-getbyuserrole.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get a **virtualEventWebinar** collection where the signed-in user is either the organizer or a coorganizer. |
| [List by user ID and role](../api/virtualeventwebinar-getbyuseridandrole.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get a **virtualEventWebinar** collection where the specified user is either the organizer or a coorganizer. |
| [Set external event information](../api/virtualevent-setexternaleventinformation.md) | None | Link external event information to a [virtualEventTownhall](../resources/virtualeventtownhall.md) or [virtualEventWebinar](../resources/virtualeventwebinar.md) by setting an **externalEventId**. |

### Roles required to act on virtualEventWebinar objects

The following table shows the roles that can perform various actions on webinars.

|Role          | Create	    | Get	       | Update	    | Publish 	 | Cancel 	  | List in org	| List by user role	| List by user ID & role |
| ------           | ----------- | ---------- | ---------- | ---------- | ---------- | ----------  | ----------------- | ---------------------- |
|Organizer         |	✅|	✅|	✅|	✅|	✅|	❌|	✅|	❌|
|Co-organizer      |	❌|	✅|	✅|	❌|	❌|	❌|	✅|	❌|
|Presenter         | 	❌|	✅|	❌|	❌|	❌|	❌|	✅|	❌|
|Attendee          |	❌|	✅|	❌|	❌|	❌|	❌|	✅|	❌|
|Custom application|	❌|	✅|	❌|	❌|	❌|	✅|	❌|	✅|


## Properties

| Property | Type | Description |
| -------- | ---- | ----------- |
| audience | meetingAudience | To whom the webinar is visible. The possible values are: `everyone`, `organization`, and `unknownFutureValue`. |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) collection | Identity information of coorganizers of the webinar. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information for the creator of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| description | [itemBody](../resources/itembody.md) | Description of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the webinar. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones). |
| externalEventInformation | [virtualEventExternalInformation](../resources/virtualeventexternalinformation.md) collection | The external information of a webinar. Returned only for event organizers or coorganizers; otherwise, `null`. |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the webinar. The **timeZone** property _can_ be set to any of the time zones currently supported by Windows. For details on how to get all available time zones using PowerShell, see [Get-TimeZone](/powershell/module/microsoft.powershell.management/get-timezone#example-3-get-all-available-time-zones). |
| id | String | Unique identifier of the webinar. Inherited from [entity](../resources/entity.md).|
| settings | [virtualEventSettings](../resources/virtualeventsettings.md) | The webinar settings. Inherited from [virtualEvent](../resources/virtualevent.md). |
| status | virtualEventStatus | Status of the webinar. The possible values are: `draft`, `published`, `canceled`, and `unknownFutureValue`. Inherited from [virtualEvent](../resources/virtualevent.md). |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| registrationConfiguration | [virtualEventWebinarRegistrationConfiguration](../resources/virtualeventwebinarregistrationconfiguration.md) | Registration configuration of the webinar. |
| registrations | [virtualEventRegistration](../resources/virtualeventregistration.md) collection | Registration records of the webinar. |
| sessions | [virtualEventSession](../resources/virtualeventsession.md)  collection | Sessions of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventWebinar",
  "baseType": "microsoft.graph.virtualEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventWebinar",
  "audience": "String",
  "coOrganizers": [{"@odata.type": "microsoft.graph.communicationsUserIdentity"}],
  "createdBy": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
  "description": {"@odata.type": "microsoft.graph.itemBody"},
  "displayName": "String",
  "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "externalEventInformation" : [{"@odata.type": "microsoft.graph.virtualEventExternalInformation"}],
  "id": "String (identifier)",
  "settings": {"@odata.type": "microsoft.graph.virtualEventSettings"},
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}
```

## Related content

[List meetingAttendanceReports](../api/meetingattendancereport-list.md)
