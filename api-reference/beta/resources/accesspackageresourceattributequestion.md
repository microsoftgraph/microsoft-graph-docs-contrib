---
title: "accessPackageResourceAttributeQuestion resource type"
description: "Resource that defines the question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system or the request approver."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeQuestion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Resource that defines the [question](accesspackagequestion.md) provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system or the request approver.

This type inherits from [accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md) and is used in the **attributeSource** property of an [accessPackageResourceAttribute](accesspackageresourceattribute.md).

The only property is **question**, which could be an [accessPackageTextInputQuestion](accesspackagetextinputquestion.md) or a [accessPackageMultipleChoiceQuestion](accesspackagemultiplechoicequestion.md) object type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|question|accessPackageQuestion|The question asked in order to get the value of the attribute|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageResourceAttributeQuestion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageResourceAttributeQuestion",
  "question": {
    "@odata.type": "microsoft.graph.accessPackageQuestion"
  }
}
```
