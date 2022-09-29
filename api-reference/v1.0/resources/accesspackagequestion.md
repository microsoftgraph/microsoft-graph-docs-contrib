---
title: "accessPackageQuestion resource type"
description: "Represents the questions configured on an access package assignment policy."
author: "saylee-dharne-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageQuestion resource type

Namespace: microsoft.graph

Used for the **accessPackageQuestion** property of an [access package assignment policy](../resources/accesspackageassignmentpolicy.md).

Subtypes include [accessPackageTextInputQuestion](../resources/accesspackagetextinputquestion.md) and [accessPackageMultipleChoiceQuestion](../resources/accesspackagemultiplechoicequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| ID of the question.|
|sequence|Int32| Relative position of this question when displaying a list of questions to the requestor.|
|isRequired|Boolean| Whether the requestor is required to supply an answer or not.|
|isAnswerEditable|Boolean| Specifies whether the requestor is allowed to edit answers to questions [by posting an update to accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) |.|
|text|String|The text of the question to show to the requestor.|
|localizations|[accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md) collection|The text of the question represented in a format for a specific locale.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageQuestion",
  "id": "String (identifier)",
  "sequence": "Integer",
  "isRequired": "Boolean",
  "isAnswerEditable": "Boolean", 
  "text": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.accessPackageLocalizedText"
    }
  ]
}
```