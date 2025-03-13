---
title: "virtualEventRegistrationQuestionAnswer resource type"
description: "Represents an answer or answers to a registration question of a virtual event."
author: "halleclottey-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 06/12/2024
---

# virtualEventRegistrationQuestionAnswer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an answer or answers to either a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or a [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|booleanValue|Boolean|Boolean answer to the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md). Only appears when **answerInputType** is `boolean`. |
|displayName|String|Display name of the registration question.|
|multiChoiceValues|String collection|A collection of text answers to the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md). Only appears when **answerInputType** is `multiChoice`.|
|questionId|String|The identifier of either a [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or a [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md).|
|value|String|Text answer to the [virtualEventRegistrationCustomQuestion](../resources/virtualeventregistrationcustomquestion.md) or the [virtualEventRegistrationPredefinedQuestion](../resources/virtualeventregistrationpredefinedquestion.md). Appears when **answerInputType** is `text`, `multilineText` or `singleChoice`.|

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
  "booleanValue": "Boolean",
  "displayName": "String",
  "multiChoiceValues": [
    "String"
  ],
  "questionId": "String",
  "value": "String"
}
```
