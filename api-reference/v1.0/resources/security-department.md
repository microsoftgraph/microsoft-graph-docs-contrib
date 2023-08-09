---
title: "department resource type"
description: "Represents the file plan descriptor of type department applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# department resource type

Namespace: microsoft.graph.security

Represents the file plan descriptor of type department applied to a particular retention label.

To list the descriptors that supplement a retention label, use the [GET](../api/security-retentionlabel-get.md) operation on that [retentionLabel](security-retentionlabel.md) resource, and apply `$expand` on the **descriptors** relationship to get the corresponding [filePlanDescriptor](security-fileplandescriptor.md) resource.

Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a department name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.department"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.department",
  "displayName": "String"
}
```

