---
title: "accessPackageTextInputQuestion resource type"
description: "Child of accessPackageQuestion that has text input as the question's answer format."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageTextInputQuestion resource type

Namespace: microsoft.graph

A child of **accessPackageQuestion** that has text input as an answer.  This is used in the **questions** property of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

Inherits from [accessPackageQuestion](../resources/accesspackagequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the question. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isAnswerEditable|Boolean| Specifies whether the requestor is allowed to edit answers to questions. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isRequired|Boolean|Indicates whether the requestor is required to supply an answer or not. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|isSingleLineQuestion|Boolean|Indicates whether the answer will be in single or multiple line format.|
|localizations|[accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md) collection|The text of the question represented in a format for a specific locale. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|regexPattern | String | The regular expression pattern which any answer to this question must match.  |
|sequence|Int32|Relative position of this question when displaying a list of questions to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|
|text|String|The text of the question to show to the requestor. Inherited from [accessPackageQuestion](../resources/accesspackagequestion.md).|



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageTextInputQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
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
  "isSingleLineQuestion": "Boolean",
  "regexPattern": "String"
}
```

