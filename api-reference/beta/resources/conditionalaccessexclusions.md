---
title: "conditionalAccessExclusions resource type"
description: "Contains the tenant-wide Conditional Access exclusions configuration."
author: "vromanchik"
ms.reviewer: conditionalaccesspm
ms.date: 10/28/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessExclusions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the exclusions configuration in the **exclusions** property of [conditionalAccessSettings](../resources/conditionalaccesssettings.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allResourcesExclusions|[allResourcesExclusions](../resources/allresourcesexclusions.md)|The exclusions for Conditional Access policies that target all resources.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessExclusions"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessExclusions",
  "allResourcesExclusions": {
    "@odata.type": "microsoft.graph.allResourcesExclusions"
  }
}
```
