---
title: "allResourcesExclusions resource type"
description: "Contains user-action exclusions for Conditional Access policies that target all resources."
author: "vromanchik"
ms.reviewer: conditionalaccesspm
ms.date: 10/28/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# allResourcesExclusions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains exclusions for Conditional Access policies that target all resources. Used by the **allResourcesExclusions** property of [conditionalAccessExclusions](../resources/conditionalaccessexclusions.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|userActionExclusions|[userActionExclusion](../resources/useractionexclusion.md) collection|The user-action exclusions and their states. Supply the complete desired collection when updating it. Not nullable.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allResourcesExclusions"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.allResourcesExclusions",
  "userActionExclusions": [
    {
      "@odata.type": "microsoft.graph.userActionExclusion"
    }
  ]
}
```
