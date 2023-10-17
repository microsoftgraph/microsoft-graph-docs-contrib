---
title: "remoteNetworkHealthStatusEvent resource type"
description: "remoteNetworkHealthEvent providing essential insights into remote network health status."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# remoteNetworkHealthStatusEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

remoteNetworkHealthEvent providing essential insights into remote network health status


Inherits from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteNetworkHealthStatusEvents](../api/networkaccess-remotenetworkhealthstatusevent-list.md)|[microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) collection|Get a list of the [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) objects and their properties.|
|[Get remoteNetworkHealthStatusEvent](../api/networkaccess-remotenetworkhealthstatusevent-get.md)|[microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) object.|
|[Update remoteNetworkHealthStatusEvent](../api/networkaccess-remotenetworkhealthstatusevent-update.md)|[microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md)|Update the properties of a [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) object.|
|[Delete remoteNetworkHealthStatusEvent](../api/networkaccess-remotenetworkhealthstatusevent-delete.md)|None|Delete a [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|description|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|destinationIp|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|receivedBytes|Int64|**TODO: Add Description**|
|remoteNetworkId|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|sentBytes|Int64|**TODO: Add Description**|
|sourceIp|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).|
|status|microsoft.graph.networkaccess.remoteNetworkHealthAliveStatus|**TODO: Add Description**.The possible values are: `alive`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

