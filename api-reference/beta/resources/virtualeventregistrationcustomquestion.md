---
title: "virtualEventRegistrationCustomQuestion resource type"
description: "Information about a custom virtual event registration question."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---
---

# virtualEventRegistrationCustomQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom registration question associated with a [virtualEventRegistration](../resources/virtualeventregistration.md).

Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|answerChoices|String collection|Answer choices when **answerInputType** is `singleChoice` or `multiChoice`. |
|answerInputType|[virtualEventRegistrationQuestionAnswerInputType](#virtualeventregistrationquestionanswerinputtype-values)|Input type of the registration question answer.|
|displayName|String|Display name of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|Unique identifier of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|isRequired|Boolean| Indicates whether an answer to the question is required. The default value is `false`. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|

### virtualEventRegistrationQuestionAnswerInputType values

The following shows the supported types of answer input for a custom registration question.

| Member | Description |
| ----- | ----------- |
| text | The registration question accepts single-line text. |
| multilineText | The registration question accepts multi-line text. |
| singleChoice | The registration question accepts one answer from a list of options. |
| multiChoice | The registration question accepts more than one answer from a list of options. |
| Boolean | The registration question accepts a yes, or no answer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationCustomQuestion",
  "baseType": "microsoft.graph.virtualEventRegistrationQuestionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationCustomQuestion",
  "answerChoices": [
    "String"
  ],
  "answerInputType": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isRequired": "Boolean"
}
```
