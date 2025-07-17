---
title: "filePlanDescriptorBase resource type"
description: "Specifies properties common to file plan descriptor resources."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# filePlanDescriptorBase resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies properties common to file plan descriptor resources. Base type for each of the descriptors: [filePlanAppliedCategory](security-fileplanappliedcategory.md), [filePlanAuthority](security-fileplanauthority.md), [filePlanCitation](security-fileplancitation.md), [filePlanDepartment](security-fileplandepartment.md), [filePlanReference](security-fileplanreference.md), and [filePlanSubcategory](security-fileplansubcategory.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines the name for the file plan descriptor associated with a particular retention label.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

