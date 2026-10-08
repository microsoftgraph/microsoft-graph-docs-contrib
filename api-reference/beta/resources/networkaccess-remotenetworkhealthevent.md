---
title: "remoteNetworkHealthEvent resource type"
description: "Contains information about network health, status, metrics, and operations."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 03/12/2024
---

# remoteNetworkHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about network health, status, metrics, and operations.

This resource is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-logs-list-remotenetworks.md)|[microsoft.graph.networkaccess.remotenetworkhealthevent](../resources/networkaccess-remotenetworkhealthevent.md) collection|Get a list of the [microsoft.graph.networkaccess.remotenetworkhealthevent](../resources/networkaccess-remotenetworkhealthevent.md) objects and their properties.|

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
      "id": "String (identifier)",
      "remoteNetworkId": "String (identifier)",
      "createdDateTime": "String (timestamp)",
      "status": "enum",
      "sourceIp": "String (IP address)",
      "destinationIp": "String (IP address)",
      "sentBytes": "Integer",
      "receivedBytes": "Integer",
      "description": "String",
      "bgpRoutesAdvertisedCount": "Integer"
}
```
