---
title: "associatedBranch resource type"
description: "A branch office location associated with a traffic profile."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
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

