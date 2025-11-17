---
title: "claimBinding resource type"
description: "Defines the mapping between a source attribute and a Verifiable ID claim."
author: "tilarso"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# claimBinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the mapping between a source attribute and a Verifiable ID claim.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceAttribute|String|Source attribute value|
|verifiedIdClaim|String|Entra ID attribute value|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.claimBinding"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.claimBinding",
  "sourceAttribute": "String",
  "verifiedIdClaim": "String"
}
```

