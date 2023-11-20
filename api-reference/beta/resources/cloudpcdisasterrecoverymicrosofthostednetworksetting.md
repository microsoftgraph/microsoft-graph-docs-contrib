---
title: "cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type"
description: "Represents the MicrosoftHostedNetwork configuration of back up Cloud PCs provisioned for cross region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryMicrosoftHostedNetworkSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the MicrosoftHostedNetwork configuration of back up Cloud PCs provisioned for cross region disaster recovery.

Inherits from [cloudPcDisasterRecoveryNetworkSetting](cloudpcdisasterrecoverynetworksetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|regionName|Edm.String|Indicates the supported Azure region that the new Cloud PC will be put under. The underlying virtual network will be created and managed by the Windows 365 service.|
|regionGroup|microsoft.graph.cloudPcRegionGroup|Indicates the logic geographic group this region belongs to. Multiple regions could belong to one region group. Once a regionGroup was configured for disaster recovery, the new Cloud PC will be put under one of the regions under the group based on resource status. e.g. Europe region group contains North Europe and West Europe regions. Possible values are: 'default', 'australia', 'canada', 'usCentral', 'usEast", 'usWest', 'france', 'germany', 'europe', 'unitedKingdom', 'japan', 'asia', 'india', 'southAmerica', 'china', 'africa', 'uae', 'euap', 'usGovernment', 'usGovrnmentDod', 'norway', 'switzerland' and 'southKorea'.|

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
