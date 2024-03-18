---
title: "virtualEventWebinar resource type"
description: "Contains information about a virtual event webinar."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventWebinar resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a virtual event webinar.

Inherits from [virtualEvent](../resources/virtualevent.md).

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [List webinars](../api/virtualeventsroot-list-webinars.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get the list of all [virtualEventWebinar](../resources/virtualeventwebinar.md) objects created in the tenant. |
| [Get virtualEventWebinar](../api/virtualeventwebinar-get.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) | Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object. |
| [List by user role](../api/virtualeventwebinar-getbyuserrole.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get a **virtualEventWebinar** collection where the signed-in user is either the organizer or a co-organizer. |
| [List by user ID and role](../api/virtualeventwebinar-getbyuseridandrole.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get a **virtualEventWebinar** collection where the specified user is either the organizer or a co-organizer. |

## Properties

| Property | Type | Description |
| -------- | ---- | ----------- |
| audience | [meetingAudience](#meetingaudience-values) | To whom the webinar is visible. |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) collection | Identity information of coorganizers of the webinar. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information for the creator of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| description | [itemBody](../resources/itembody.md) | Description of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the webinar. The **timeZone** property _can_ be set to any of the [time zones currently supported by Windows](/windows-hardware/manufacture/desktop/default-time-zones). Inherited from [virtualEvent](../resources/virtualevent.md). |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the webinar. The **timeZone** property _can_ be set to any of the [time zones currently supported by Windows](/windows-hardware/manufacture/desktop/default-time-zones). Inherited from [virtualEvent](../resources/virtualevent.md). |
| id | String | Unique identifier of the webinar. Inherited from [entity](../resources/entity.md).|
| status | [virtualEventStatus](#virtualeventstatus-values) | Status of the webinar. |

### meetingAudience values

| Value | Description |
| ----- | ----------- |
| everyone | The webinar is a public webinar. A public webinar is visible to everyone. |
| organization | The webinar is a private webinar. A private webinar is visible only within the same organization as the organizer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### virtualEventStatus values

| Value | Description |
| ----- | ----------- |
| draft | The virtual event is in draft and only visible to the organizer. |
| published | The organizer published the virtual event and it's visible to the audience. |
| canceled | The organizer canceled the virtual event. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
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
  "id": "String (identifier)",
  "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}
```
