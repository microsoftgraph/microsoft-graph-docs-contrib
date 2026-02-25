---
title: "privateAccessFeatureUtilizations resource type"
description: "Represents the aggregated utilization metrics for Microsoft Entra Private Access features."
author: "mhavelka-ms"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 02/25/2026
---

# privateAccessFeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregated utilization metrics for Microsoft Entra Private Access features.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|privateAccess|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the Microsoft Entra Private Access feature.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.privateAccessFeatureUtilizations",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateAccessFeatureUtilizations",
  "privateAccess": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  }
}
```
