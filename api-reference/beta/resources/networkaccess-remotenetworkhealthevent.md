---
title: "remoteNetworkHealthEvent resource type"
description: "Contains information about network health, status, metrics, and operations."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# remoteNetworkHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about network health, status, metrics, and operations.
This is an abstract type.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|The number of BGP routes advertised through tunnel.|
|createdDateTime|DateTimeOffset|The time of the original event generation in UTC. Supports `$filter` (`ge`, `le`) and `$orderby`.|
|description|String|The description of the event.|
|destinationIp|String|The IP address of the destination.|
|id|String|A unique identifier for each remoteNetworkHealthEvent.|
|remoteNetworkId|String|A unique identifier for each remoteNetwork site. Supports `$filter` (`eq`).|
|sourceIp|String|The public IP address.|
|status|microsoft.graph.networkaccess.remoteNetworkStatus|The status of the remote network. The possible values are: `tunnelDisconnected`, `tunnelConnected`, `bgpDisconnected`, `bgpConnected`, `remoteNetworkAlive`, `unknownFutureValue`.|
|sentBytes|Int64|The number of bytes sent from the source to the destination for the connection or session.|
|receivedBytes|Int64|The number of bytes sent from the destination to the source.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "openType": false
}
-->
``` json
{
      "id": "69be33d9-8609-4104-b256-2e7ff1579698",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-09-07T14:47:33.8346145Z",
      "status": "alive",
      "sourceIp": "xxx.xxx.xx.151",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 3524,
      "receivedBytes": 2698,
      "description": "",
      "bgpRoutesAdvertisedCount": 25
}
```

