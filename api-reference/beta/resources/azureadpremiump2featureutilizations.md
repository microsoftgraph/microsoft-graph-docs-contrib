---
title: "azureADPremiumP2FeatureUtilizations resource type"
description: "Represents the utilization data for Microsoft Entra ID P2 premium features."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADPremiumP2FeatureUtilizations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the utilization data for Microsoft Entra ID P2 premium features. Each property contains a user count indicating how many users in the tenant have used that P2 feature. Used by the **p2FeatureUtilizations** property of the [azureADPremiumLicenseInsight](azureadpremiumlicenseinsight.md) resource.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|riskBasedConditionalAccess|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the risk-based Conditional Access feature.|
|riskBasedConditionalAccessGuestUsers|[azureADPremiumFeatureUtilization](../resources/azureadpremiumfeatureutilization.md)|The utilization data for the risk-based Conditional Access feature applied to guest users.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADPremiumP2FeatureUtilizations"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumP2FeatureUtilizations",
  "riskBasedConditionalAccess": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  },
  "riskBasedConditionalAccessGuestUsers": {
    "@odata.type": "microsoft.graph.azureADPremiumFeatureUtilization"
  }
}
```
