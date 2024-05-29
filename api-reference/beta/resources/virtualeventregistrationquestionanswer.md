---
title: "virtualEventRegistrationQuestionAnswer resource type"
description: "Information about registration question answer of a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# virtualEventRegistrationQuestionAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[PLACEHOLDER DESCRIPTION. i.e. Represents the answer(s) of a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) and [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md).]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|booleanValue|Boolean|Boolean answer of the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md). Only appears when **answerInputType** is `boolean`. |
|displayName|String|Display name of the registration question.|
|multiChoiceValues|String collection|Collection of text answer of the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md). Only appears when **answerInputType** is `multiChoice`.|
|questionId|String|**id** of the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) and [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md).|
|value|String|Text answer of the registration question. Appears when **answerInputType** is `text`, `multilineText` or `singleChoice`.|

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
  "booleanValue": "Boolean",
  "displayName": "String",
  "multiChoiceValues": [
    "String"
  ],
  "questionId": "String",
  "value": "String"
}
```
