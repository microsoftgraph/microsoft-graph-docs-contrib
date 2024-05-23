---
title: "remoteNetworkConnectivityConfiguration resource type"
description: "Specifies the connectivity details of all device links associated with a remote network."
author: abhijeetsinha
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# remoteNetworkConnectivityConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the connectivity details of all device links associated with a remote network.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get remoteNetworkConnectivityConfiguration](../api/networkaccess-remotenetworkconnectivityconfiguration-get.md)|[microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration](../resources/networkaccess-remotenetworkconnectivityconfiguration.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration](../resources/networkaccess-remotenetworkconnectivityconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|remoteNetworkId|String|Unique identifier or a specific reference assigned to a branchSite. Key.|
|remoteNetworkName|String|Display name assigned to a branchSite.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|links|[microsoft.graph.networkaccess.connectivityConfigurationLink](../resources/networkaccess-connectivityconfigurationlink.md) collection|List of connectivity configurations for [deviceLink](../resources/networkaccess-devicelink.md) objects.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "remoteNetworkId",
  "@odata.type": "microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.remoteNetworkConnectivityConfiguration",
  "remoteNetworkId": "String (identifier)",
  "remoteNetworkName": "String"
}
```

