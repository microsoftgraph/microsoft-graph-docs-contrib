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

Represents a file plan descriptor that specifies a group of similar types of content in a department. Used to supplement a [retention label](security-retentionlabel.md) for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete an **appliedCategory** descriptor, use the [categoryTemplate](security-categorytemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a category name applied to the label. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|
|subCategory|[microsoft.graph.security.subCategory](../resources/security-subcategory.md)|Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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

