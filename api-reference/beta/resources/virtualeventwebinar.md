---
title: "virtualEventWebinar resource type"
description: "Information about a virtual event webinar."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
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
| [Get virtualEventWebinar](../api/virtualeventwebinar-get.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) | Read the properties and relationships of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object. |

## Properties

| Property | Type | Description |
| -------- | ---- | ----------- |
| audience | [meetingAudience](#meetingaudience-values) | To whom the webinar is visible. |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) collection | Identity information of co-organizers of the webinar. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information of who created the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| description | String | Description of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| displayName | String | Display name of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| endDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | End time of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| startDateTime | [dateTimeTimeZone](../resources/datetimetimezone.md) | Start time of the webinar. Inherited from [virtualEvent](../resources/virtualevent.md). |
| id | String | Unqiue identifier of the webinar. Inherited from [entity](../resources/entity.md).|
| status | [virtualEventStatus](#virtualeventstatus-values) | Status of the webinar. |

### meetingAudience values

| Value | Description |
| ----- | ----------- |
| everyone | This is a public webinar. A public webinar is visible to everyone. |
| organization | This is a private webinar. A private webinar is visible only to those in the same organization as the organizer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

### virtualEventStatus values

| Value | Description |
| ----- | ----------- |
| draft | The webinar is in draft and only visible to the organizer. |
| published | The webinar has been published by the organizer and visible to the audience. |
| canceled | The webinar has been canceled by the organizer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| presenters | [virtualEventPresenter](../resources/virtualeventpresenter.md) collection | Presenters' information of the webinar. Inherited from [microsoft.graph.virtualEvent](../resources/virtualevent.md)|
| registration | [virtualEventRegistration](../resources/virtualeventregistration.md) | Registration configuration of the webinar. |
| sessions | [virtualEventSession](../resources/virtualeventsession.md)  collection | Sessions of the webinar. Inherited from [microsoft.graph.virtualEvent](../resources/virtualevent.md) |

## JSON representation

The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "status": "String",
  "displayName": "String",
  "description": "String",
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "endDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.communicationsIdentitySet"
  },
  "audience": "String",
  "coOrganizers": [
    {
      "@odata.type": "microsoft.graph.communicationsUserIdentity"
    }
  ]
}
```
