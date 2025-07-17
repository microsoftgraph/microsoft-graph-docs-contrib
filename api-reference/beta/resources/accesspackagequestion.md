---
title: "accessPackageQuestion resource type"
description: "The complex type for questions configured on an access package assignment policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessPackageQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **accessPackageQuestion** property of an [access package assignment policy](accesspackageassignmentpolicy.md) and the **accessPackageResourceAttributeQuestion** in an [accessPackageResourceAttribute](accesspackageresourceattribute.md).

Subtypes include [accessPackageTextInputQuestion](accesspackagetextinputquestion.md) and [accessPackageMultipleChoiceQuestion](accesspackagemultiplechoicequestion.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| ID of the question.|
|isRequired|Boolean| Whether the requestor is required to supply an answer or not.|
|sequence|Int32| Relative position of this question when displaying a list of questions to the requestor.|
|text|[accessPackageLocalizedContent](../resources/accesspackagelocalizedcontent.md)|The text of the question to show to the requestor.|
|isAnswerEditable|Boolean| Specifies whether the requestor is allowed to edit answers to questions.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageQuestion",
  "id": "String (identifier)",
  "isRequired": "Boolean",
  "text": {
    "@odata.type": "microsoft.graph.accessPackageLocalizedContent"
  },
  "sequence": "Integer"
}
```
