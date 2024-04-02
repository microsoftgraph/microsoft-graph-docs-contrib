---
title: "filePlanAppliedCategory resource type"
description: "Represents the file plan descriptor of type category applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# filePlanAppliedCategory resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file plan descriptor that specifies a group of similar types of content in a department. Used to supplement a [retention label](security-retentionlabel.md) for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete an **filePlanAppliedCategory** descriptor, use the [categoryTemplate](security-categorytemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a file plan category name applied to the label. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|subcategory|[microsoft.graph.security.filePlanSubcategory](../resources/security-fileplansubcategory.md)|Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanAppliedCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanAppliedCategory",
  "displayName": "String",
  "subCategory": {
    "@odata.type": "microsoft.graph.security.filePlanAppliedCategory"
  }
}
```

