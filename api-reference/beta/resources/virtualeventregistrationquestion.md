---
title: "virtualEventRegistrationQuestion resource type"
description: "Information about a virtual event registration question."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---
---

# virtualEventRegistrationQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a registration question associated with a [virtualEventRegistration](../resources/virtualeventregistration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|answerChoices|String collection|Answer choices when **answerInputType** is `singleChoice` or `multiChoice`. |
|answerInputType|[virtualEventRegistrationQuestionAnswerInputType](#virtualeventregistrationquestionanswerinputtype-values)|Input type of the registration question answer.|
|displayName|String|Display name of the registration question.|
|id|String|Unique identifier of the registration question. Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean| Indicates whether the question is required to answer. Default value is `false`.|

### virtualEventRegistrationQuestionAnswerInputType values

| Value | Description |
| ----- | ----------- |
| text | The registration question accepts single-line text. |
| multilineText | The registration question accepts multi-line text. |
| singleChoice | The registration question accepts one anwer from a list of options. |
| multiChoice | The registration question accepts more than one answers from a list of options. |
| boolean | The registration question accepts a yes or no answer. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualEventRegistrationQuestion",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestion",
  "answerChoices": [
    "String"
  ],
  "answerInputType": "String",
  "displayName": "String",  
  "id": "String (identifier)",
  "isRequired": "Boolean"
}
```
