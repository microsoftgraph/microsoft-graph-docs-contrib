---
title: "tunnelConnectivityHealthEvent resource type"
description: "tunnelConnectivityHealthEvent providing essential insights into tunnel health status."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# tunnelConnectivityHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

tunnelConnectivityHealthEvent providing essential insights into tunnel health status.


Inherits from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tunnelConnectivityHealthEvents](../api/networkaccess-tunnelconnectivityhealthevent-list.md)|[microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md) collection|Get a list of the [microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md) objects and their properties.|
|[Get tunnelConnectivityHealthEvent](../api/networkaccess-tunnelconnectivityhealthevent-get.md)|[microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md) object.|
|[Update tunnelConnectivityHealthEvent](../api/networkaccess-tunnelconnectivityhealthevent-update.md)|[microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md)|Update the properties of a [microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md) object.|
|[Delete tunnelConnectivityHealthEvent](../api/networkaccess-tunnelconnectivityhealthevent-delete.md)|None|Delete a [microsoft.graph.networkaccess.tunnelConnectivityHealthEvent](../resources/networkaccess-tunnelconnectivityhealthevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|destinationIp|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|remoteNetworkId|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|sourceIp|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|status|microsoft.graph.networkaccess.tunnelConnectivityHealthStatus|**TODO: Add Description**.The possible values are: `tunnelDisconnected`, `tunnelConnected`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tunnelConnectivityHealthEvent",
  "baseType": "microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tunnelConnectivityHealthEvent",
  "id": "String (identifier)",
  "remoteNetworkId": "String",
  "createdDateTime": "String (timestamp)",
  "sourceIp": "String",
  "destinationIp": "String",
  "description": "String",
  "bgpRoutesAdvertisedCount": "Integer",
  "status": "String"
}
```

