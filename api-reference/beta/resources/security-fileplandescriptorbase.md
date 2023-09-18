---
title: "filePlanDescriptorBase resource type"
description: "Represents the name for each file plan descriptor column associated with a particular label."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# filePlanDescriptorBase resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the name for each [file plan descriptor](../resources/security-fileplandescriptor.md) column associated with a particular label.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines the name for each [file plan descriptor](../resources/security-fileplandescriptor.md) associated with a particular retention label.|

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

