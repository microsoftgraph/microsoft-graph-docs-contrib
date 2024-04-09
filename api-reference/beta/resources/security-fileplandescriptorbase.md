---
title: "filePlanDescriptorBase resource type"
description: "Specifies properties common to file plan descriptor resources."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# filePlanDescriptorBase resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies properties common to file plan descriptor resources. Base type for each of the descriptors: [appliedCategory](security-appliedcategory.md), [authority](security-authority.md), [citation](security-citation.md), [department](security-department.md), [filePlanReference](security-fileplanreference.md), and [subCategory](security-subcategory.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines the name for the file plan descriptor associated with a particular retention label.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanDescriptorBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanDescriptorBase",
  "displayName": "String"
}
```

