---
title: "associatedBranch resource type"
description: "Specifies the associated branch locations for a given traffic forwarding profile"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# associatedBranch resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the associated branch locations for a given traffic forwarding profile

Inherits from [microsoft.graph.networkaccess.association](../resources/networkaccess-association.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|branchId|String|Branch Unique Id|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.associatedBranch"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
  "branchId": "String"
}
```

