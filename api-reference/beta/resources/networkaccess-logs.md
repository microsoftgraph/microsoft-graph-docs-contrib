---
title: "logs resource type"
description: "Global Secure Access Network Logs."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# logs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Global Secure Access Network Logs.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List logs](../api/networkaccess-networkaccessroot-list-logs.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) collection|Get a list of the [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) objects and their properties.|
|[Get logs](../api/networkaccess-logs-get.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|
|[List remoteNetworks](../api/networkaccess-logs-list-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|Get the remoteNetworkHealthEvent resources from the remoteNetworks navigation property.|
|[List traffic](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get the networkAccessTraffic resources from the traffic navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteNetworks|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|remoteNetworkHealthEvent providing essential insights into remote network health.|
|traffic|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Represents a network access traffic log entry. It contains comprehensive information regarding network traffic events, offering detailed insights into the nature and characteristics of the traffic through the Global Secure Access services.|

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

