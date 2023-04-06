---
title: "virtualEventWebinar resource type"
description: "Information about a virtual event webinar."
author: "ananmishr"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventWebinar resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a virtual event webinar.

## Methods

| Method | Return Type |Description |
| ------ | ----------- | ---------- |
| [Get](../api/virtualevent-get.md) | [virtualEventWebinar](virtualEventWebinar.md) | Read the properties and relationships of an **virtualEventWebinar** object. |

## Properties

| Property | Type | Description |
| -------- | ---- | ----------- |
| audience | [meetingAudience](#meetingaudience-values) | User principal name of the participant.  |
| coOrganizers  | [communicationsUserIdentity](communicationsuseridentity.md) | Identity information of co-organizers of the webinar. |
| createdBy | [communicationsIdentitySet](communicationsidentityset.md) | Identity information of who created the webinar. |
| description | String | Description of the webinar. |
| displayName | String | Display name of the webinar. |
| endDateTime | [dateTimeTimeZone](???) | End time of the webinar. |
| startDateTime | [dateTimeTimeZone](???) | Start time of the webinar. |
| status | [virtualEventStatus](#virtualeventstatus-values) | Status of the webinar. The possible values are: `draft`, `published`, `canceled`, `unknownFutureValue`. |

### virtualEventStatus values

| Value | Description |
| ------------------ | ---------------------------------------------------------------------- |
| draft            | Participant's role is attendee. This value applies to all meetings.   |
| published           | Participant's role is presenter. This value applies to meetings with **allowedPresenter** set to `roleIsPresenter`, or a Teams live event. |
| canceled            | Participant's role is producer. This value applies to Teams live event only.  |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

### meetingAudience values

| Value | Description |
| ----- | ----------- |
| everyone | This is a public webinar. A public webinar is visible to everyone. |
| organization | This is a private webinar. A private webinar is visible only to those in the same organization as the organizer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| presenters | [virtualEventPresenter](virtualEventPresenter.md) | The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.|
| registration | [virtualEventRegistration](virtualEventRegistration.md) | The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.|
| sessions | [virtualEventSession](virtualEventSession.md)  collection | The attendance reports of an online meeting. Read-only. |

## JSON representation
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventWebinar"
}-->
```json
{
    "audience": {"@odata.type": "microsoft.graph.watermarkProtectionValues"},
    "coOrganizer": {"@odata.type": "microsoft.graph.communicationsUserIdentity"},
    "createdBy": {"@odata.type": "microsoft.graph.communicationsIdentitySet"},
    "description": "String",
    "displayName": "String",
    "endDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
    "startDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
    "status": {"@odata.type": "microsoft.graph.watermarkProtectionValues"}
}
```