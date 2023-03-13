---
title: "authenticationStrengthRoot resource type"
description: "The authenticationStrengthRoot resource is the entry point for the authentication strengths object model."
ms.localizationpriority: medium
author: "InbarckMS"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationStrengthRoot resource type

Namespace: microsoft.graph


The **authenticationStrengthRoot** resource is the entry point for the authentication strengths object model.

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationCombinations|authenticationMethodModes collection|A collection of all valid authentication method combinations in the system.|
|id|String|A system-generated identifier.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authenticationMethodModes|[authenticationMethodModeDetail](../resources/authenticationmethodmodedetail.md) collection|Names and descriptions of all valid authentication method modes in the system.|
|policies|[authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection|A collection of [authentication strength policies](authenticationStrengthPolicy.md) that exist for this tenant, including both built-in and custom policies.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationStrengthRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationStrengthRoot",
  "id": "String (identifier)",
  "authenticationCombinations": [
    "String"
  ]
}
```

