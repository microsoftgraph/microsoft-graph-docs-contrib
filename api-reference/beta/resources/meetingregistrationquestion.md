---
title: "meetingRegistrationQuestion resource type"
description: "Represents a custom registration question, other than first name, last name, and email address, associated with a meetingRegistration."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# meetingRegistrationQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom registration question, other than first name, last name, and email address, associated with a [meetingRegistration](meetingRegistration.md).

## Methods

| Method | Return Type | Description |
| :----- | :---------- | :---------- |
|[List](../api/meetingregistration-list-customquestions.md) | [meetingRegistrationQuestion](meetingregistrationquestion.md) collection | List all custom registration questions. |
|[Create](../api/meetingregistration-post-customquestions.md) | [meetingRegistrationQuestion](meetingregistrationquestion.md) | Create a custom registration question. |
|[Get](../api/meetingregistrationquestion-get.md) | [meetingRegistrationQuestion](meetingregistrationquestion.md) | Get a custom registration question. |
|[Update](../api/meetingregistrationquestion-update.md) | [meetingRegistrationQuestion](meetingregistrationquestion.md) | Update a custom registration question. |
|[Delete](../api/meetingregistrationquestion-delete.md) | [meetingRegistrationQuestion](meetingregistrationquestion.md) | Delete a custom registration question. |

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| answerInputType | [answerInputType](#answerinputtype-values) | Answer input type of the custom registration question. |
| answerOptions | String collection | Answer options when **answerInputType** is `radioButton`. |
| displayName | String | Display name of the custom registration question. |
| id | String | ID of the custom registration question. Read-only. |
| isRequired | Boolean | Indicates whether the question is required. Default value is `false`. |

### answerInputType values

| Value              | Description |
|--------------------|-------------|
| text | Question accepts a single line text answer. |
| radioButton | Question accepts an answer chosen from radio buttons. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

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
