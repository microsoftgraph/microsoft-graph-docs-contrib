---
title: "cloudPcDisasterRecoveryAzureConnectionSetting resource type"
description: "Represents the AzureConnection configuration of backup Cloud PCs provisioned for cross region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryAzureConnectionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the AzureConnection configuration of backup Cloud PCs provisioned for cross region disaster recovery.

Inherits from [cloudPcDisasterRecoveryNetworkSetting](cloudpcdisasterrecoverynetworksetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|onPremisesConnectionId|Edm.String|Indicates the unique ID of the virtual network that the new Cloud PC joins.|

## Relationships

None.

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDisasterRecoveryAzureConnectionSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDisasterRecoveryAzureConnectionSetting",
  "onPremisesConnectionId": "String"
}
```
