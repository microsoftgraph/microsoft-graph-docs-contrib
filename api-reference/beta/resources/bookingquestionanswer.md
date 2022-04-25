---
title: "bookingQuestionAnswer resource type"
description: "Contains a custom question, an answer given by the customer for the custom question, and the properties of the custom question at the time of creation of the appointment."
author: "razortbone"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# bookingQuestionAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains a custom question, an answer given by the customer for the custom question, and the properties of the custom question at the time of creation of the appointment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|answer|String|The answer given by the user in case the **answerInputType** is `text`. |
|answerInputType|answerInputType|The expected answer type. The possible values are: `text`, `radioButton`, `unknownFutureValue`.|
|answerOptions|String collection|In case the answerInputType is radioButton, this will consists of a list of possible answer values. |
|isRequired|Boolean| Indicates whether it is mandatory to answer the custom question. |
|question|String|The question. |
|questionId|String|The ID of the custom question. |
|selectedOptions|String collection|The answers selected by the user. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bookingQuestionAnswer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookingQuestionAnswer",
  "questionId": "String",
  "question": "String",
  "answerInputType": {"@odata.type": "microsoft.graph.answerInputType"},
  "answerOptions": [
    "String"
  ],
  "isRequired": "Boolean",
  "answer": "String",
  "selectedOptions": [
    "String"
  ]
}
```

