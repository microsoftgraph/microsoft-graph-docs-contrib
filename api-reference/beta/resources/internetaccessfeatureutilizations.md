---
title: "internetAccessFeatureUtilizations resource type"
description: "Represents the aggregated utilization metrics for Microsoft Entra Internet Access features."
author: "wukchung"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 02/25/2026
---

# internetAccessFeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregated utilization metrics for Microsoft Entra Internet Access features.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|internetAccess|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the Microsoft Entra Internet Access feature.|
|internetAccessM365|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the Microsoft Entra Internet Access for Microsoft 365 feature.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.internetAccessFeatureUtilizations",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.internetAccessFeatureUtilizations",
  "internetAccess": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  },
  "internetAccessM365": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  }
}
```
