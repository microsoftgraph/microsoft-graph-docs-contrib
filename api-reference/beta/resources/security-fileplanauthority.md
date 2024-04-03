---
title: "filePlanAthority resource type"
description: "Represents the file plan descriptor of type authority applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# filePlanAthority resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file plan descriptor that specifies the type of the underlying authority which determines the content to be retained and its retention schedule. Used to supplement a [retention label](security-retentionlabel.md) for [record management purposes](security-recordsmanagement-overview.md).

To create, get, or delete a **filePlanAthority** descriptor, use the [authorityTemplate](security-authoritytemplate.md) resource.

This resource is one of a set of file plan descriptors that an administrator can choose to supplement a retention label. To find out more about these optional descriptors, and how to get the descriptors that have been chosen for a retention label, see [file plan descriptor](security-fileplandescriptor.md).

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a filePlanAthority name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanAthority"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanAthority",
  "displayName": "String"
}
```

