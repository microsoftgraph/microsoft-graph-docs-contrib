---
title: "appliedCategory resource type"
description: "Represents the file plan descriptor of type category applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# appliedCategory resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file plan descriptor of type category applied to a particular retention label.


Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a category name applied to the label. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|subCategory|[microsoft.graph.security.subCategory](../resources/security-subcategory.md)|Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.appliedCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.appliedCategory",
  "displayName": "String",
  "subCategory": {
    "@odata.type": "microsoft.graph.security.subCategory"
  }
}
```

