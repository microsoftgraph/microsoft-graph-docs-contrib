---
title: "cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type"
description: "Represents the configuration of Microsoft-hosted network for backup Cloud PCs provisioned for cross-region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/07/2024
---

# cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of Microsoft-hosted network for backup Cloud PCs provisioned for cross-region disaster recovery.

Inherits from [cloudPcDisasterRecoveryNetworkSetting](../resources/cloudpcdisasterrecoverynetworksetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcsupportedregion.md#cloudpcregiongroup-values)|Indicates the logic geographic group this region belongs to. Multiple regions can belong to one region group. When a region group is configured for disaster recovery, the new Cloud PC is assigned to one of the regions within the group based on resource availability. For example, the `europeUnion` region group contains the North Europe and West Europe regions. Possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`, `norway`, `switzerland`, `southKorea`, `middleEast`, `mexico`, `australasia`, `europe`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `norway`, `switzerland`, `southKorea`, `middleEast`, `mexico`, `australasia`, `europe`.|
|regionName|String|Indicates the Azure region that the new Cloud PC is assigned to. The Windows 365 service creates and manages the underlying virtual network.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting",
  "regionGroup": "String",
  "regionName": "String"
}
```
