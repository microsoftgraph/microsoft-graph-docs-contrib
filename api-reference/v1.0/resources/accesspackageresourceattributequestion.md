---
title: "accessPackageResourceAttributeQuestion resource type"
description: "Resource that defines the question provided to an end user, for the purpose of obtaining an attribute value to be passed to the end system or the request approver."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageResourceAttributeQuestion resource type

Namespace: microsoft.graph

Resource that references the [question](accesspackagequestion.md) provided to an end user making a request, for the purpose of obtaining an attribute value to be put onto the user.

This type inherits from [accessPackageResourceAttributeSource](../resources/accesspackageresourceattributesource.md) and is used in the **source** property of an [accessPackageResourceAttribute](accesspackageresourceattribute.md).

The only property is **question**, which could be an [accessPackageTextInputQuestion](accesspackagetextinputquestion.md) or a [accessPackageMultipleChoiceQuestion](accesspackagemultiplechoicequestion.md) object type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|question|[accessPackageQuestion](accesspackagequestion.md)|The question asked in order to get the value of the attribute.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
