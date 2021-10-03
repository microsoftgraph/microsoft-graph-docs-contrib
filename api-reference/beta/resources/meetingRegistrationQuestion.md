---
title: "meetingRegistrationQuestion resource type"
description: "Registration question information of an online meeting."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: resourcePageType
---

# meetingRegistrationQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom registration question of a [meetingRegistration](meetingRegistration.md) other than first name, last name and email address.

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[List](../api/meetingRegistrationQuestion-list.md) | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) collection | List all custom registration questions. |
|[Create](../api/meetingRegistrationQuestion-create.md) | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) | Create a custom registration question. |
|[Get](../api/meetingRegistrationQuestion-get.md) | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) | Get a custom registration question. |
|[Update](../api/meetingRegistrationQuestion-update.md) | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) | Update a custom registration question. |
|[Delete](../api/meetingRegistrationQuestion-delete.md) | [meetingRegistrationQuestion](meetingRegistrationQuestion.md) | Delete a custom registration question. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| answerInputType | [answerInputType](#answerinputtype-values) | Answer input type of the custom registration question. |
| answerOptions | String collection | Answer options when **answerInputType** is `radioButton`. |
| displayName | String | Display name of the custom registration question. |
| id | String | Id of the custom registration question. Read-only. |
| isRequired | Boolean | Indicate if this question is required. |

### answerInputType values

| Value              | Description |
|--------------------|-------------|
| text | Question accepts a single line text answer. |
| radioButton | Question accepts an answer chosen from radio buttons. |
| unknownFutureValue | Unknown future value. |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingRegistrationQuestion"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "isRequired": "Boolean",
  "answerInputType": { "@odata.type": "microsoft.graph.answerInputType" },
  "answerOptions": [ "String" ],
}
```
