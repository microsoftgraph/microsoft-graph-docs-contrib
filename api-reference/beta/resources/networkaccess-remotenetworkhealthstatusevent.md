---
title: "remoteNetworkHealthStatusEvent resource type"
description: "Contains information about the health of a remote network."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# remoteNetworkHealthStatusEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about the health of a remote network.


Inherits from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteNetworkHealthStatusEvents](../api/networkaccess-remotenetworkhealthstatusevent-list.md)|[microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) collection|Get a list of the [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) objects and their properties.|



## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|The number of BGP routes advertised through tunnel. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|createdDateTime|DateTimeOffset|The time that the event was generated, in UTC. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md). Supports `$filter` (`ge`, `le`) and `$orderby`.|
|description|String|A description for the event.  Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|destinationIp|String|The IP address of the destination. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|id|String|A unique identifier for each remoteNetworkHealthEvent. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|receivedBytes|Int64|The number of bytes sent from the destination to the source.|
|remoteNetworkId|String|A unique identifier for each remoteNetwork site. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md). Supports `$filter` (`eq`).|
|sentBytes|Int64|The number of bytes sent from the source to the destination for the connection or session.|
|sourceIp|String|The public IP address. Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|status|microsoft.graph.networkaccess.remoteNetworkHealthAliveStatus|Alive status. The possible values are: `alive`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent",
  "baseType": "microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent",
  "id": "String (identifier)",
  "remoteNetworkId": "String",
  "createdDateTime": "String (timestamp)",
  "sourceIp": "String",
  "destinationIp": "String",
  "description": "String",
  "bgpRoutesAdvertisedCount": "Integer",
  "sentBytes": "Integer",
  "receivedBytes": "Integer",
  "status": "String"
}
```

