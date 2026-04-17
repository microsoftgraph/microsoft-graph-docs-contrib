---
title: "azureADPremiumLicenseInsight resource type"
description: "Provides insight into the Microsoft Entra ID P1 and P2 premium license utilization for a tenant."
author: "sanchariroy"
ms.date: 03/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# azureADPremiumLicenseInsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides insight into the Microsoft Entra ID P1 and P2 premium license utilization for a tenant. This resource shows how many premium licenses are entitled and how the associated premium features are being used.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/azureadpremiumlicenseinsight-get.md)|[azureADPremiumLicenseInsight](../resources/azureadpremiumlicenseinsight.md)|Get the premium license utilization insight for the tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entitledP1LicenseCount|Int64|The number of Microsoft Entra ID P1 licenses entitled to the tenant.|
|entitledP2LicenseCount|Int64|The number of Microsoft Entra ID P2 licenses entitled to the tenant.|
|entitledTotalLicenseCount|Int64|The total number of Microsoft Entra ID premium licenses (P1 + P2) entitled to the tenant.|
|id|String|The unique identifier for the entity. Inherited from [entity](../resources/entity.md).|
|internetAccessFeatureUtilizations|[internetAccessFeatureUtilizations](../resources/internetaccessfeatureutilizations.md)|The utilization data for Microsoft Entra Internet Access features.|
|p1FeatureUtilizations|[azureADPremiumP1FeatureUtilizations](../resources/azureadpremiump1featureutilizations.md)|The utilization data for Microsoft Entra ID P1 features.|
|p2FeatureUtilizations|[azureADPremiumP2FeatureUtilizations](../resources/azureadpremiump2featureutilizations.md)|The utilization data for Microsoft Entra ID P2 features.|
|privateAccessFeatureUtilizations|[privateAccessFeatureUtilizations](../resources/privateaccessfeatureutilizations.md)|The utilization data for Microsoft Entra Private Access features.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureADPremiumLicenseInsight",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumLicenseInsight",
  "entitledP1LicenseCount": "Integer",
  "entitledP2LicenseCount": "Integer",
  "entitledTotalLicenseCount": "Integer",
  "id": "String (identifier)",
  "internetAccessFeatureUtilizations": {
    "@odata.type": "microsoft.graph.internetAccessFeatureUtilizations"
  },
  "p1FeatureUtilizations": {
    "@odata.type": "microsoft.graph.azureADPremiumP1FeatureUtilizations"
  },
  "p2FeatureUtilizations": {
    "@odata.type": "microsoft.graph.azureADPremiumP2FeatureUtilizations"
  },
  "privateAccessFeatureUtilizations": {
    "@odata.type": "microsoft.graph.privateAccessFeatureUtilizations"
  }
}
```
