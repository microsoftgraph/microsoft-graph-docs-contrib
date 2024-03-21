---
title: "cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type"
description: "Represents the MicrosoftHostedNetwork configuration of backup Cloud PCs provisioned for cross region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the MicrosoftHostedNetwork configuration of backup Cloud PCs provisioned for cross region disaster recovery.

Inherits from [cloudPcDisasterRecoveryNetworkSetting](cloudpcdisasterrecoverynetworksetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|regionName|Edm.String|Indicates the supported Azure region that the new Cloud PC is put under. Windows 365 service create and manage the underlying virtual network.|
|regionGroup|microsoft.graph.cloudPcRegionGroup|Indicates the logic geographic group this region belongs to. Multiple regions could belong to one region group. Once a regionGroup was configured for disaster recovery, the new Cloud PC is put under one of the regions under the group based on resource status. For example, Europe region group contains North Europe and West Europe regions. Possible values are: 'default', 'Australia', 'Canada', 'usCentral', 'usEast", 'usWest', 'France', 'Germany', 'Europe', 'unitedKingdom', 'Japan', 'Asia', 'India', 'southAmerica', 'China', 'Africa', 'uae', 'euap', 'usGovernment', 'usGovrnmentDod', 'Norway', 'Switzerland' and 'southKorea'.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting",
  "regionName": "String",
  "regionGroup": {
    "@odata.type": "#microsoft.graph.cloudPcRegionGroup"
  }
}
```
