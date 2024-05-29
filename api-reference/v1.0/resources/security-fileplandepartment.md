---
title: "filePlanDepartment resource type"
description: "Represents the file plan descriptor of type department applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDepartment resource type

Namespace: microsoft.graph.security

Represents a file plan descriptor that specifies the department or business unit of an organization to which a [retention label](security-retentionlabel.md) applies. Used to supplement a retention label for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **filePlanDepartment** descriptor, use the [departmentTemplate](security-departmenttemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a filePlanDepartment name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanDepartment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanDepartment",
  "displayName": "String"
}
```

