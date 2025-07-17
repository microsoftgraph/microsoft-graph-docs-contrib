---
title: "branchConnectivityConfiguration resource type (deprecated)"
description: "Specifies the connectivity details of all device links associated with a branch."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 05/23/2024
---

# branchConnectivityConfiguration resource type (deprecated)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the connectivity details of all device links associated with a branch.

> [!IMPORTANT]
> Deprecated and to be retired soon. Use the [remoteNetworkConnectivityConfiguration resource type](../resources/networkaccess-remotenetworkconnectivityconfiguration.md) and its associated methods instead.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/networkaccess-branchconnectivityconfiguration-get.md)|[microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|branchId|String|Unique identifier or a specific reference assigned to a branchSite. Key.|
|branchName|String|Display name assigned to a branchSite.|
|links|[microsoft.graph.networkaccess.connectivityConfigurationLink](../resources/networkaccess-connectivityconfigurationlink.md) collection|List of connectivity configurations for [deviceLink](../resources/networkaccess-devicelink.md) objects.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|links|[microsoft.graph.networkaccess.connectivityConfigurationLink](../resources/networkaccess-connectivityconfigurationlink.md) collection|List of connectivity configurations for [deviceLink](../resources/networkaccess-devicelink.md) objects.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "branchId",
  "@odata.type": "microsoft.graph.networkaccess.branchConnectivityConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.branchConnectivityConfiguration",
  "branchId": "String (identifier)",
  "branchName": "String"
}
```

