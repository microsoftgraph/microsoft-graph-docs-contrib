---
title: "filePlanSubcategory resource type"
description: "Represents a unique filePlanSubcategory applied to a retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanSubcategory resource type

Namespace: microsoft.graph.security

Represents a unique subcategory applied to a [retention label](security-retentionlabel.md). Used to supplement a retention label for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **filePlanSubcategory** descriptor, use the [subcategoryTemplate](security-subcategorytemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a filePlanSubcategory name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanSubcategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanSubcategory",
  "displayName": "String"
}
```

