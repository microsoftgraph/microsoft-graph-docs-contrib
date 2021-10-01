---
title: "meetingRegistration resource type"
description: "Contains information about online meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# meetingRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Registration information of an online meeting.

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[Create registration](../api/meetingRegistration-create.md) | [meetingRegistration](meetingRegistration.md) | Create and enable registration for an online meeting. |
|[Get registration](../api/meetingRegistration-get.md) | [meetingRegistration](meetingRegistration.md) | Retrieve the details of a meeting registration. |
|[Update registration](../api/meetingRegistration-update.md) | [meetingRegistration](meetingRegistration.md) | Update the details of a meeting registration. |
|[Delete registration](../api/meetingRegistration-delete.md) | [meetingRegistration](meetingRegistration.md) | Delete and disable registration for an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| allowedRegistrant | [meetingAudience](#meetingaudience-values) | Specify who can register for the meeting. |
| customQuestions | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) colletion | The custom registration questions. |
| description | String | The description of the meeting registration. |
| endDateTime | DateTime | The meeting end time in UTC. Default is the same as meeting end time. |
| registrants | [meetingRegistrant](meetingRegistrant.md) colletion | The registrants of the meeting. |
| registrationPageViewCount | Int32 | Indicate how mant times the registration page has been visited. |
| registrationPageWebUrl | String | The URL of the registration page. Read-only. |
| speakers | [meetingSpeaker](meetingSpeaker.md) colletion | The speakers information of the meeting. |
| startDateTime | DateTime | The meeting start time in UTC. Default is the same as meeting start time. |
| subject | String | The subject of the meeting registration. |

### meetingAudience values

| Value              | Description |
| ------------------ | ----------- |
| everyone           | Everyone can register for the meeting. |
| organization       | Everyone in organizer’s organization can register for the meeting. |
| unknownFutureValue | Unknown future value. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingRegistration"
}-->

```json
{
    "allowedRegistrant": {"@odata.type": "microsoft.graph.meetingAudience"},
    "customQuestions": [{"@odata.type": "microsoft.graph.meetingRegistrationQuestion"}],
    "description": "String",
    "endDateTime": "String (timestamp)",
    "registrants": [{"@odata.type": "microsoft.graph.meetingRegistrant"}],
    "registrationPageViewCount": "Int32",
    "registrationPageWebUrl": "String",
    "speakers": [{"@odata.type": "microsoft.graph.meetingSpeaker"}],
    "startDateTime": "String (timestamp)",
    "subject": "String",
}
```
