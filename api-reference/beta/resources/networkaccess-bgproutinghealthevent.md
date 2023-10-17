---
title: "bgpRoutingHealthEvent resource type"
description: "**TODO: Add Description**"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# bgpRoutingHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bgpRoutingHealthEvents](../api/networkaccess-bgproutinghealthevent-list.md)|[microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md) collection|Get a list of the [microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md) objects and their properties.|
|[Get bgpRoutingHealthEvent](../api/networkaccess-bgproutinghealthevent-get.md)|[microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md) object.|
|[Update bgpRoutingHealthEvent](../api/networkaccess-bgproutinghealthevent-update.md)|[microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md)|Update the properties of a [microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md) object.|
|[Delete bgpRoutingHealthEvent](../api/networkaccess-bgproutinghealthevent-delete.md)|None|Delete a [microsoft.graph.networkaccess.bgpRoutingHealthEvent](../resources/networkaccess-bgproutinghealthevent.md) object.|

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
|status|microsoft.graph.networkaccess.bgpRoutingHealthStatus|**TODO: Add Description**.The possible values are: `bgpDisconnected`, `bgpConnected`, `unknownFutureValue`.|

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
  "@odata.type": "#microsoft.graph.networkaccess.bgpRoutingHealthEvent",
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

