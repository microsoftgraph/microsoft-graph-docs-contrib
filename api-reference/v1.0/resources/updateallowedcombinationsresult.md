---
title: "updateAllowedCombinationsResult resource type"
description: "The results of an attempt to update an authentication strength's allowed authentication method combinations."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# updateAllowedCombinationsResult resource type

Namespace: microsoft.graph

The results of an attempt to update an authentication strength's [allowedCombinations](../resources/authenticationstrengthpolicy.md) property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInformation|String|Information about why the [updateAllowedCombinations](../api/authenticationstrengthpolicy-updateallowedcombinations.md) action was successful or failed.|
|conditionalAccessReferences|String collection|References to existing Conditional Access policies that use this authentication strength.|
|currentCombinations|authenticationMethodModes collection|The list of current authentication method combinations allowed by the authentication strength.|
|previousCombinations|authenticationMethodModes collection|The list of former authentication method combinations allowed by the authentication strength before they were updated through the [updateAllowedCombinations](../api/authenticationstrengthpolicy-updateallowedcombinations.md) action.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.updateAllowedCombinationsResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.updateAllowedCombinationsResult",
  "previousCombinations": [
    "String"
  ],
  "currentCombinations": [
    "String"
  ],
  "conditionalAccessReferences": [
    "String"
  ],
  "additionalInformation": "String"
}
```

