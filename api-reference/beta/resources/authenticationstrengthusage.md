---
title: "authenticationStrengthUsage resource type"
description: "Two collections of Conditional Access policies that reference the specified authentication strength. One collection contains referencing Conditional Access policies that require an MFA claim; the other collection contains referencing Conditional Access policies that don't require such a claim."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationStrengthPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An object containing two collections of Conditional Access policies that reference the specified authentication strength. One collection contains referencing Conditional Access policies that require an MFA claim; the other collection contains referencing Conditional Access policies that don't require such a claim.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[usage](../api/authenticationstrengthpolicy-usage.md)|[authenticationStrengthUsage](../resources/authenticationStrengthUsage.md)|Get an [authenticationStrengthUsage](../resources/authenticationStrengthUsage.md) object and its properties.|

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
The following is a JSON representation of the resource.
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

