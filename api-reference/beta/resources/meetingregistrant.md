---
title: "meetingRegistrant resource type"
description: "Represents a meeting registrant who enrolled in an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: Meeting Registrant (deprecated)
ms.date: 10/15/2024
---

# meetingRegistrant resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a meeting registrant who enrolled in an [online meeting](onlinemeeting.md).

Inherits from [meetingRegistrantBase](meetingregistrantbase.md).

> [!CAUTION]
> The meeting registrant API is deprecated and will stop returning data on **December 12, 2024**. Please use the new [webinar APIs](../resources/virtualeventwebinar.md). For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/).

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[List](../api/meetingregistration-list-registrants.md) | [meetingRegistrant](meetingregistrant.md) | List all registrants who enrolled in the meeting. |
|[Create](../api/meetingregistration-post-registrants.md) | [meetingRegistrant](meetingregistrant.md) | Enroll a registrant in an online meeting. |
|[Delete](../api/meetingregistrant-delete.md) | [meetingRegistrant](meetingregistrant.md) | Unenroll a registrant from an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| customQuestionAnswers | [customQuestionAnswer](customQuestionAnswer.md) collection | The registrant's answer to custom questions. |
| email | String | The email address of the registrant. |
| firstName | String | The first name of the registrant. |
| id | String | The unique identifier of the registrant. Read-only. |
| joinWebUrl | String | A unique web URL for the registrant to join the meeting. Read-only. |
| lastName | String | The family name of the registrant. |
| registrationDateTime | String | Time in UTC when the registrant registers for the meeting. Read-only. |
| status | [meetingRegistrantStatus](#meetingregistrantstatus-values) | The registration status of the registrant. Read-only. |

### meetingRegistrantStatus values

| Value              | Description |
|--------------------|-------------|
| registered | Registrant has enrolled in the meeting. |
| canceled | Registrant has canceled their registration. |
| processing | Interim status indicating the status is processing. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
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
