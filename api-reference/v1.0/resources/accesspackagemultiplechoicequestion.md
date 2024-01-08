---
title: "accessPackageMultipleChoiceQuestion resource type"
description: "Subclass of accessPackageQuestion that has multiple choices as the question's answer format."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageMultipleChoiceQuestion resource type

Namespace: microsoft.graph

A child of **accessPackageQuestion** that presents multiple options that the requestor must choose an answer from. This is used in the **questions** property of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

Inherits from [accessPackageQuestion](../resources/accesspackagequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|choices|[accessPackageAnswerChoice](../resources/accesspackageanswerchoice.md) collection|List of answer choices.|
|id|String|ID of the question. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isAnswerEditable|Boolean| Specifies whether the requestor is allowed to edit answers to questions. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isMultipleSelectionAllowed|Boolean|Indicates whether requestor can select multiple choices as their answer.|
|isRequired|Boolean|Indicates whether the requestor is required to supply an answer or not. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|localizations|[accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md) collection|The text of the question represented in a format for a specific locale. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|sequence|Int32|Relative position of this question when displaying a list of questions to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|text|String|The text of the question to show to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageMultipleChoiceQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
  "id": "String (identifier)",
  "sequence": "Integer",
  "isRequired": "Boolean",
  "isAnswerEditable":"Boolean", 
  "text": "String",
  "localizations": [
    {
      "@odata.type": "microsoft.graph.accessPackageLocalizedText"
    }
  ],
  "isMultipleSelectionAllowed": "Boolean",
  "choices": [
    {
      "@odata.type": "microsoft.graph.accessPackageAnswerChoice"
    }
  ]
}
```
