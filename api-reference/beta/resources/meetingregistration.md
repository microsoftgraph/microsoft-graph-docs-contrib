---
title: "meetingRegistration resource type"
description: "Contains information about online meeting registration."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# meetingRegistration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains registration details of an online meeting, such as a [Microsoft Teams Webinar](https://support.microsoft.com/office/get-started-with-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3). 

Inherits from [meetingRegistrationBase](meetingregistrationbase.md).

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[Create meetingRegistration](../api/meetingregistration-post.md) | [meetingRegistration](meetingregistration.md) | Create and enable registration for an online meeting. |
|[Get meetingRegistration](../api/meetingregistration-get.md) | [meetingRegistration](meetingregistration.md) | Retrieve the details of a meeting registration. |
|[Update meetingRegistration](../api/meetingregistration-update.md) | [meetingRegistration](meetingregistration.md) | Update the details of a meeting registration. |
|[Delete meetingRegistration](../api/meetingregistration-delete.md) | [meetingRegistration](meetingregistration.md) | Disable and delete registration for an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| allowedRegistrant | [meetingAudience](#meetingaudience-values) | Specifies who can register for the meeting. |
| description | String | The description of the meeting. |
| endDateTime | DateTime | The meeting end time in UTC. |
| registrationPageViewCount | Int32 | The number of times the registration page has been visited. Read-only. |
| registrationPageWebUrl | String | The URL of the registration page. Read-only. |
| speakers | [meetingSpeaker](meetingspeaker.md) collection | The meeting speaker's information. |
| startDateTime | DateTime | The meeting start time in UTC. |
| subject | String | The subject of the meeting. |

### meetingAudience values

| Value              | Description |
| ------------------ | ----------- |
| everyone           | Everyone can register for the meeting. |
| organization       | Everyone in the organizer’s organization can register for the meeting. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

| Relationship | Type | Description |
| ------------ | ---- | ----------- |
| customQuestions | [meetingRegistrationQuestion](meetingregistrationquestion.md) collection| Custom registration questions. |
| registrants | [meetingRegistrant](meetingregistrant.md) collection | Registrants of the online meeting. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingRegistration"
}-->

```json
{
  "allowedRegistrant": { "@odata.type": "microsoft.graph.meetingAudience" },
  "description": "String",
  "endDateTime": "String (timestamp)",
  "registrationPageViewCount": "Int32",
  "registrationPageWebUrl": "String",
  "speakers": [{ "@odata.type": "microsoft.graph.meetingSpeaker" }],
  "startDateTime": "String (timestamp)",
  "subject": "String"
}
```
