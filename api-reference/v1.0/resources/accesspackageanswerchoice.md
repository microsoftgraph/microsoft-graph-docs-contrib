---
title: "accessPackageAnswerChoice resource type"
description: "An answer option for an accessPackageMultipleChoiceQuestion."
author: "saylee-dharne-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageAnswerChoice resource type

Namespace: microsoft.graph

Indicates an answer option for an [accessPackageMultipleChoiceQuestion](../resources/accesspackagemultiplechoicequestion.md). Multiple accessPackageAnswerChoices can be added to an [accessPackageMultipleChoiceQuestion](../resources/accesspackagemultiplechoicequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actualValue|String|	The value stored on the requestor's user profile, if this answer is configured to be stored as a specific attribute. |
|text|String|The text of the answer choice to show to the requestor.|
|localizations|Collection([accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md))|The text of the answer choice represented in a format for a specific locale.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAnswerChoice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAnswerChoice",
  "actualValue": "String",
  "text": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.accessPackageLocalizedText"
    }
  ]
}
```
