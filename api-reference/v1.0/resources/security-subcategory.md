---
title: "subCategory resource type"
description: "Represents a unique subcategory applied to a retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# subCategory resource type

Namespace: microsoft.graph.security

Represents a unique subcategory applied to a retention label.

To list the descriptors that supplement a retention label, use the [GET](../api/security-retentionlabel-get.md) operation on that [retentionLabel](security-retentionlabel.md) resource, and apply `$expand` on the **descriptors** relationship to get the corresponding [filePlanDescriptor](security-fileplandescriptor.md) resource.

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a subcategory name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

