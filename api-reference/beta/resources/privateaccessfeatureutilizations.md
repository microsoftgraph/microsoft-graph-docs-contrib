---
title: "privateAccessFeatureUtilizations resource type"
description: "Represents the aggregated utilization metrics for Microsoft Entra Private Access features."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# privateAccessFeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregated utilization metrics for Microsoft Entra Private Access features. Used by the **privateAccessFeatureUtilizations** property of the [azureADPremiumLicenseInsight](azureadpremiumlicenseinsight.md) resource.


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
  "@odata.type": "microsoft.graph.privateAccessFeatureUtilizations"
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
