---
title: "appliedCategory resource type"
description: "**TODO: Add Description**"
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# appliedCategory resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorbase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorbase.md).|
|subCategory|[microsoft.graph.security.subCategory](../resources/security-subcategory.md)|**TODO: Add Description**|

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

