---
title: "branchConnectivityConfiguration resource type"
description: "The branchConnectivityConfiguration represents the specific configuration settings and parameters for the connectivity of a branch."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# branchConnectivityConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The branchConnectivityConfiguration represents the specific configuration settings and parameters for the connectivity of a branch.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get branchConnectivityConfiguration](../api/networkaccess-branchconnectivityconfiguration-get.md)|[microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.branchConnectivityConfiguration](../resources/networkaccess-branchconnectivityconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|branchId|String|Unique identifier or a specific reference assigned to a branch.|
|branchName|String|Display name assigned to a branch.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|links|[microsoft.graph.networkaccess.connectivityConfigurationLink](../resources/networkaccess-connectivityconfigurationlink.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

