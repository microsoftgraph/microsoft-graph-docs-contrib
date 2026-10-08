---
title: "internetAccessFeatureUtilizations resource type"
description: "Represents the aggregated utilization metrics for Microsoft Entra Internet Access features."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# internetAccessFeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregated utilization metrics for Microsoft Entra Internet Access features. Used by the **internetAccessFeatureUtilizations** property of the [azureADPremiumLicenseInsight](azureadpremiumlicenseinsight.md) resource.


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
  "@odata.type": "microsoft.graph.internetAccessFeatureUtilizations"
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
