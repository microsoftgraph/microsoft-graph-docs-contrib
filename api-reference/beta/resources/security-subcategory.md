---
title: "subCategory resource type"
description: "Represents a unique subcategory applied to a retention label."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# subCategory resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unique subcategory applied to a [retention label](security-retentionlabel.md). Used to supplement a retention label for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **subCategory** descriptor, use the [subCategoryTemplate](security-subcategorytemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a subcategory name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.subCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.subCategory",
  "displayName": "String"
}
```

