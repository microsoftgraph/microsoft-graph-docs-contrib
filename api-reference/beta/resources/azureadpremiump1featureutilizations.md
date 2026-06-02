---
title: "azureADPremiumP1FeatureUtilizations resource type"
description: "Represents the utilization data for Microsoft Entra ID P1 premium features."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADPremiumP1FeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the utilization data for Microsoft Entra ID P1 premium features. Each property contains a user count indicating how many users in the tenant have used that P1 feature. Used by the **p1FeatureUtilizations** property of the [azureADPremiumLicenseInsight](azureadpremiumlicenseinsight.md) resource.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditionalAccess|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the Conditional Access feature.|
|conditionalAccessGuestUsers|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the Conditional Access feature applied to guest users.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADPremiumP1FeatureUtilizations"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumP1FeatureUtilizations",
  "conditionalAccess": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  },
  "conditionalAccessGuestUsers": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  }
}
```
