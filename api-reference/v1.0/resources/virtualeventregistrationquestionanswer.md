---
title: "virtualEventRegistrationQuestionAnswer resource type"
description: "Information about registration question answer of a virtual event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistrationQuestionAnswer resource type

Namespace: microsoft.graph

Represents the answer(s) of a virtual event registration question.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|booleanValue|Boolean|Boolean answer of the virtual event registration question. Only appears when **answerInputType** is `boolean`. |
|displayName|String|Display name of the registration question.|
|multiChoiceValues|String collection|Collection of text answer of the virtual event registration question. Only appears when **answerInputType** is `multiChoice`.|
|questionId|String|**id** of the virtual event registration question.|
|value|String|Text answer of the virtual event registration question. Appears when **answerInputType** is `text`, `multilineText` or `singleChoice`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventRegistrationQuestionAnswer"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualEventRegistrationQuestionAnswer",
  "questionId": "String",
  "displayName": "String",
  "value": "String",
  "booleanValue": "Boolean",
  "multiChoiceValues": [
    "String"
  ]
}
```

