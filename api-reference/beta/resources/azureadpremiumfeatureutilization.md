---
title: "azureADPremiumFeatureUtilization resource type"
description: "Represents the utilization count for a single Microsoft Entra ID premium feature."
author: "wukchung"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 02/25/2026
---

# azureADPremiumFeatureUtilization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the utilization count for a single Microsoft Entra ID premium feature. Contains the number of users who have used the feature.

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
  "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumFeatureUtilization",
  "userCount": "Int64"
}
```
