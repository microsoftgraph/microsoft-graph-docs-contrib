---
title: "logs resource type"
description: "**TODO: Add Description**"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: resourcePageType
---

# logs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List logs](../api/networkaccess-networkaccessroot-list-logs.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) collection|Get a list of the [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) objects and their properties.|
|[Create logs](../api/networkaccess-networkaccessroot-post-logs.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Create a new [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|
|[Get logs](../api/networkaccess-logs-get.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|
|[Update logs](../api/networkaccess-logs-update.md)|[microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md)|Update the properties of a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|
|[Delete logs](../api/networkaccess-networkaccessroot-delete-logs.md)|None|Delete a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object.|
|[List remoteNetworks](../api/networkaccess-logs-list-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|Get the remoteNetworkHealthEvent resources from the remoteNetworks navigation property.|
|[Create remoteNetworkHealthEvent](../api/networkaccess-logs-post-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md)|Create a new remoteNetworkHealthEvent object.|
|[List traffic](../api/networkaccess-logs-list-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|Get the networkAccessTraffic resources from the traffic navigation property.|
|[Create networkAccessTraffic](../api/networkaccess-logs-post-traffic.md)|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md)|Create a new networkAccessTraffic object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteNetworks|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|**TODO: Add Description**|
|traffic|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|**TODO: Add Description**|

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

