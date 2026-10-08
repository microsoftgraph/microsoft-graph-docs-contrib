---
title: "azureADPremiumFeatureUtilization resource type"
description: "Represents the utilization count for a single Microsoft Entra ID premium feature."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADPremiumFeatureUtilization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the utilization count for a single Microsoft Entra ID premium feature. Contains the number of users who have used the feature. Used by properties of the [azureADPremiumP1FeatureUtilizations](azureadpremiump1featureutilizations.md) and [azureADPremiumP2FeatureUtilizations](azureadpremiump2featureutilizations.md) resources.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|userCount|Int64|The number of users who have used this premium feature.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumFeatureUtilization",
  "userCount": "Integer"
}
```
