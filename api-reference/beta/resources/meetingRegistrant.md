---
title: "meetingRegistrant resource type"
description: "Contains information about online meeting registrant."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# meetingRegistrant resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Speaker of an online meeting that has registration enabled.

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[Create](meetingRegistrant-create.md) | [meetingRegistrant](meetingRegistrant.md) | Create and enable registration for an online meeting. |
|[Get](meetingRegistrant-get.md) | [meetingRegistrant](meetingRegistrant.md) | Retrieve the details of a meeting registration. |
|[Update](meetingRegistrant-update.md) | [meetingRegistrant](meetingRegistrant.md) | Update the details of a meeting registration. |
|[Delete](meetingRegistrant-delete.md) | [meetingRegistrant](meetingRegistrant.md) | Delete and disable registration for an online meeting. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| id | String | Id of the registrant. |
| customQuestionAnswers | String | Registrant's answer to the custom questions. |
| email | String | Email address of the registrant. |
| firstName | String | First name of the registrant. |
| joinWebUrl | String | Unique web URL for the registrant to join the meeting. |
| lastName | String | Last name of the registrant. |
| registrationDateTime | String | Time when the registrant is registered in UTC. |
| status | [meetingRegistrantStatus](#meetingRegistrantStatus-values) | Registration status of the registrant. |

### meetingRegistrantStatus values

| Value              | Description |
|--------------------|-------------|
| registered         | Registrant has registered for the meeting. |
| cancelled          | Registrant has cancelled their registration. |
| processing         | Interim status indicating the status is processing. |
| unknownFutureValue | Unknown future value. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingSpeaker"
}-->

```json
{
    "bio": "String",
    "displayName": "String"
}
```
