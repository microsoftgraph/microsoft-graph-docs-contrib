---
title: "bookingQuestionAnswer resource type"
description: "Contains a custom question, the answer given by the customer for the custom question, and the properties of the custom question at the time of creation of the appointment."
author: "razortbone"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# bookingQuestionAnswer resource type

Namespace: microsoft.graph

Contains a custom question, the answer given by the customer for the custom question, and the properties of the custom question at the time of creation of the appointment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answer|String|The answer given by the user in case the **answerInputType** is `text`.|
|answerInputType|answerInputType|The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`.|
|answerOptions|String collection|In case the **answerInputType** is `radioButton`, this will consists of a list of possible answer values.|
|isRequired|Boolean|Indicates whether it is mandatory to answer the custom question.|
|question|String|The question.|
|questionId|String|The ID of the custom question.|
|selectedOptions|String collection|The answers selected by the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingQuestionAnswer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingQuestionAnswer",
  "answer": "String",
  "answerInputType": {"@odata.type": "microsoft.graph.answerInputType"},
  "answerOptions": [
    "String"
  ],
  "isRequired": "Boolean",
  "question": "String",
  "questionId": "String",
  "selectedOptions": [
    "String"
  ]
}
```

