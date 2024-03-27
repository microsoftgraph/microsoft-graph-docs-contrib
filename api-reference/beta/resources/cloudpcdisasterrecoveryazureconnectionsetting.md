---
title: "cloudPcDisasterRecoveryAzureConnectionSetting resource type"
description: "Represents the Azure connection configuration of backup Cloud PCs provisioned for cross-region disaster recovery."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDisasterRecoveryAzureConnectionSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Azure connection configuration of backup Cloud PCs provisioned for cross-region disaster recovery.

Inherits from [cloudPcDisasterRecoveryNetworkSetting](../resources/cloudpcdisasterrecoverynetworksetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|onPremisesConnectionId|String|Indicates the unique ID of the virtual network that the new Cloud PC joins.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
