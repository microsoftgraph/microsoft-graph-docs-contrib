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

Registrants who have enrolled for an online meeting.

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[List](../api/meetingRegistrant-list.md) | [meetingRegistrant](meetingRegistrant.md) | List all registrants who have enrolled in the meeting. |
|[Create](../api/meetingRegistrant-create.md) | [meetingRegistrant](meetingRegistrant.md) | Enroll a registrant in an online meeting. |
|[Delete](../api/meetingRegistrant-delete.md) | [meetingRegistrant](meetingRegistrant.md) | Unenroll a registrant from an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| customQuestionAnswers | [customQuestionAnswer](customQuestionAnswer.md) collection | Registrant's answer to the custom questions. |
| email | String | The email address of the registrant. |
| firstName | String | The first name of the registrant. |
| id | String | The id of the registrant. Read-only. |
| joinWebUrl | String | Unique web URL for the registrant to join the meeting. Read-only. |
| lastName | String | The last name of the registrant. |
| registrationDateTime | String | Time in UTC when the registrant registers for the meeting. Read-only. |
| status | [meetingRegistrantStatus](#meetingregistrantstatus-values) | The registration status of the registrant. Read-only. |

### meetingRegistrantStatus values

| Value              | Description |
|--------------------|-------------|
| registered | Registrant has enrolled in the meeting. |
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
  "customQuestionAnswers": [{ "@odata.type": "microsoft.graph.customQuestionAnswer" }]
}
```
