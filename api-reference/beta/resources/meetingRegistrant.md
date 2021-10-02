---
title: "meetingRegistrant resource type"
description: "Contains information about meeting registrant."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# meetingRegistrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Participants who have registered for the online meeting.

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[List registrants](../api/meetingRegistrant-list.md) | [meetingRegistrant](meetingRegistrant.md) | List all participants who have registered for the meeting. |
|[Add registrant](../api/meetingRegistrant-create.md) | [meetingRegistrant](meetingRegistrant.md) | Register a participant for an online meeting. |
|[Delete registrant](../api/meetingRegistrant-delete.md) | [meetingRegistrant](meetingRegistrant.md) | Remove a registrant from an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| customQuestionAnswers | [customQuestionAnswer](customQuestionAnswer.md) | Registrant's answer to the custom questions. |
| email | String | Email address of the registrant. |
| firstName | String | First name of the registrant. |
| id | String | Id of the registrant. |
| joinWebUrl | String | Unique web URL for the registrant to join the meeting. |
| lastName | String | Last name of the registrant. |
| registrationDateTime | String | Time in UTC when the registrant registers for the meeting. |
| status | [meetingRegistrantStatus](#meetingregistrantstatus-values) | Registration status of the registrant. |

### meetingRegistrantStatus values

| Value              | Description |
|--------------------|-------------|
| registered | Registrant has registered for the meeting. |
| canceled | Registrant has canceled their registration. |
| processing | Interim status indicating the status is processing. |
| unknownFutureValue | Unknown future value. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingRegistrant"
}-->

```json
{
  "id": "String",
  "firstName": "String (timestamp)",
  "email": "String",
  "lastName": "String",
  "joinWebUrl": "String",
  "registrationDateTime": "String (timestamp)",
  "status": { "@odata.type": "microsoft.graph.meetingRegistrantStatus" },
  "customQuestionAnswers": [{ "@odata.type": "microsoft.graph.customQuestionAnswer" }],
}
```
