---
title: "bgpRoutingHealthEvent resource type"
description: "Provides BGP Routing Health Events such as 'BGP Connected' and 'BGP Disconnected' operations."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# bgpRoutingHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides BGP Routing Health Events such as 'BGP Connected' and 'BGP Disconnected' operations.


Inherits from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteNetworkHealthEvents](../api/networkaccess-logs-list-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|Get a list of the [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|Count of BGP routes advertised through tunnel.|
|createdDateTime|DateTimeOffset|Time of original event generation in UTC Client time generated.|
|description|String|Description and summary of the event.|
|destinationIp|String|The IP address of the destination.|
|id|String|A unique identifier for each remoteNetworkHealthEvent.|
|remoteNetworkId|String|A unique identifier for each remoteNetwork site.|
|sourceIp|String|The public IP address.|
|status|microsoft.graph.networkaccess.bgpRoutingHealthStatus|Connection status. The possible values are: `bgpDisconnected`, `bgpConnected`|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.bgpRoutingHealthEvent",
  "baseType": "microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "openType": false
}
-->
``` json
{
      "@odata.type": "#microsoft.graph.networkAccess.remoteNetworkHealthStatusEvent",
      "id": "69be33d9-8609-4104-b256-2e7ff1579698",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-09-07T14:47:33.8346145Z",
      "status": "alive",
      "sourceIp": "20.237.10.151",
      "destinationIp": "40.122.117.0",
      "sentBytes": 3524,
      "receivedBytes": 2698,
      "description": "",
      "bgpRoutesAdvertisedCount": 25
}
```

