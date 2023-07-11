---
title: "associatedBranch resource type"
description: "A branch office location associated with a traffic profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# associatedBranch resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A branch office location associated with a traffic profile.

Inherits from [microsoft.graph.networkaccess.association](../resources/networkaccess-association.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|branchId|String|Identifier for the branch.|

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

