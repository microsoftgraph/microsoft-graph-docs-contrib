---
title: "virtualEventRegistrationCustomQuestion resource type"
description: "Represents a custom registration question associated with a virtual event registration."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# virtualEventRegistrationCustomQuestion resource type

Namespace: microsoft.graph

Represents a custom registration question associated with a [virtualEventRegistration](../resources/virtualeventregistration.md).

Inherits from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|answerChoices|String collection|Answer choices when **answerInputType** is `singleChoice` or `multiChoice`. |
|answerInputType|virtualEventRegistrationQuestionAnswerInputType|Input type of the registration question answer. Possible values are `text`, `multilineText`, `singleChoice`, `multiChoice`, `boolean`, and `unknownFutureValue`.|
|displayName|String|Display name of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|id|String|Unique identifier of the registration question. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|
|isRequired|Boolean| Indicates whether an answer to the question is required. The default value is `false`. Inherited from [virtualEventRegistrationQuestionBase](../resources/virtualeventregistrationquestionbase.md).|


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
