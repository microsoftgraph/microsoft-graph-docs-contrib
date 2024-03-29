---
title: "filePlanReference resource type"
description: "Represents the file plan descriptor of type filePlanReference applied to a particular retention label."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# filePlanReference resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the file plan descriptor of type filePlanReference applied to a particular retention label.


Inherits from [microsoft.graph.security.filePlanDescriptorBase](../resources/security-fileplandescriptorBase.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Unique string that defines a filePlanReference name. Inherited from [microsoft.graph.security.filePlanDescriptor](../resources/security-fileplandescriptor.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.filePlanReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.filePlanReference",
  "displayName": "String"
}
```

