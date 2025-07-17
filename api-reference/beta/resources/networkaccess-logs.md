---
title: "logs resource type"
description: "Global Secure Access network logs."
author: miritsadon
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
toc.title: Traffic logs
ms.date: 08/01/2024
---

# logs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Global Secure Access network logs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List traffic](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get the network access traffic events.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteNetworks|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|A collection of remote network health events.|
|traffic|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|A network access traffic log entry that contains comprehensive information about network traffic events.|
|connections|[microsoft.graph.networkaccess.connection](../resources/networkaccess-connection.md) collection|An aggregated log entry that contains comprehensive information about network traffic events.|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.logs",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.logs"
}
```

