---
title: "connectivityConfigurationLink resource type"
description: "Specifies connectivity details for device links associated with a branch."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# connectivityConfigurationLink resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies connectivity details for [deviceLink](../resources/networkaccess-devicelink.md) objects associated with a branch.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Specifies the name of the link.|
|id|String|A unique identifier for each link.|
|localConfigurations|[microsoft.graph.networkaccess.localConnectivityConfiguration](../resources/networkaccess-localconnectivityconfiguration.md) collection|Specifies Microsoft's end of the tunnel configuration for a device link.|
|peerConfiguration|[microsoft.graph.networkaccess.peerConnectivityConfiguration](../resources/networkaccess-peerconnectivityconfiguration.md)|Specifies the customer's end of the tunnel configuration for a device link.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.connectivityConfigurationLink",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.connectivityConfigurationLink",
  "id": "String (identifier)",
  "displayName": "String",
  "localConfigurations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.localConnectivityConfiguration"
    }
  ],
  "peerConfiguration": {
    "@odata.type": "microsoft.graph.networkaccess.peerConnectivityConfiguration"
  }
}
```

