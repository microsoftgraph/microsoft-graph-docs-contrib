---
title: "virtualEventRegistrationQuestion resource type"
description: "Information about a virtual event registration question."
author: "**TODO: add PM alias**"
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
|answerInputType|virtualEventRegistrationQuestionAnswerInputType|Input type of the registration question answer.The possible values are: `text`, `multilineText`, `singleChoice`, `multiChoice`, `boolean`, `unknownFutureValue`.|
|displayName|String|Display name of the registration question.|
|id|String|Unique identifier of the registration question. Inherited from [entity](../resources/entity.md).|
|isRequired|Boolean| Indicates whether the question is required to answer. Default value is `false`.|

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
  "id": "String (identifier)",
  "displayName": "String",
  "answerInputType": "String",
  "answerChoices": [
    "String"
  ],
  "isRequired": "Boolean"
}
```
