---
title: "riskProfile resource type"
description: "Contains information for human and workload identity counts in a specific risk bucket."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# riskProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information for human and workload identity counts in a specific risk bucket.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|humanCount|Int32|This is the count of human identities that have been assigned to this riskScoreBracket,|
|nonHumanCount|Int32|This is the count of nonhuman identities that have been assigned to this riskScoreBracket|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskProfile",
  "humanCount": "Integer",
  "nonHumanCount": "Integer"
}
```

