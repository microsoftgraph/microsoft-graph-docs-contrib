---
title: "authenticationStrengthUsage resource type"
description: "Two collections of Conditional Access policies that reference the specified authentication strength. One collection references Conditional Access policies that require an MFA claim; the other collection references Conditional Access policies that don't require such a claim."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationStrengthUsage resource type

Namespace: microsoft.graph

An object containing two collections of Conditional Access policies that reference the specified authentication strength. One collection references Conditional Access policies that require an MFA claim; the other collection references Conditional Access policies that don't require such a claim.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mfa|conditionalAccessPolicy collection|A collection of Conditional Access policies that reference the specified authentication strength policy and that require an MFA claim.|
|none|conditionalAccessPolicy collection|A collection of Conditional Access policies that reference the specified authentication strength policy and that do not require an MFA claim.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mfa|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection|A collection of Conditional Access policies that reference the specified authentication strength policy and that require an MFA claim.|
|none|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection|A collection of Conditional Access policies that reference the specified authentication strength policy and that *do not* require an MFA claim.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationStrengthUsage",
  "openType": false,
  "baseType": null
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrengthUsage",
  "mfa": ["String"],
  "none": ["String"]
}
```

