---
title: "azureADPremiumLicenseInsightHistory resource type"
description: "Provides daily snapshots of Microsoft Entra ID premium license utilization over the last six months."
author: "wukchung"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 02/25/2026
---

# azureADPremiumLicenseInsightHistory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides daily snapshots of Microsoft Entra ID premium license utilization over the last six months. Each record represents a single day's utilization data, including entitled license counts and feature usage across P1, P2, Private Access, and Internet Access features.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reports-list-azureadpremiumlicenseinsighthistory.md)|[azureADPremiumLicenseInsightHistory](../resources/azureadpremiumlicenseinsighthistory.md) collection|Get the daily snapshots of premium license utilization for the tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|entitledP1LicenseCount|Int64|The number of Microsoft Entra ID P1 licenses entitled to the tenant.|
|entitledP2LicenseCount|Int64|The number of Microsoft Entra ID P2 licenses entitled to the tenant.|
|entitledTotalLicenseCount|Int64|The total number of Microsoft Entra ID premium licenses (P1 + P2) entitled to the tenant.|
|factDate|Date|The date for this daily snapshot of license utilization.|
|id|String|The unique identifier for the insight history record.|
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
  "@odata.type": "microsoft.graph.azureADPremiumLicenseInsightHistory",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADPremiumLicenseInsightHistory",
  "id": "String (identifier)",
  "factDate": "Date",
  "entitledP1LicenseCount": "Int64",
  "entitledP2LicenseCount": "Int64",
  "entitledTotalLicenseCount": "Int64",
  "p1FeatureUtilizations": {
    "@odata.type": "microsoft.graph.azureADPremiumP1FeatureUtilizations"
  },
  "p2FeatureUtilizations": {
    "@odata.type": "microsoft.graph.azureADPremiumP2FeatureUtilizations"
  },
  "privateAccessFeatureUtilizations": {
    "@odata.type": "microsoft.graph.privateAccessFeatureUtilizations"
  },
  "internetAccessFeatureUtilizations": {
    "@odata.type": "microsoft.graph.internetAccessFeatureUtilizations"
  }
}
```
