---
title: "remoteNetworkHealthEvent resource type"
description: "remoteNetworkHealthEvent providing essential insights into remote network health."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# remoteNetworkHealthEvent resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

remoteNetworkHealthEvent providing essential insights into remote network health.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List remoteNetworkHealthEvents](../api/networkaccess-logs-list-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|Get a list of the [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) objects and their properties.|
|[Create remoteNetworkHealthEvent](../api/networkaccess-logs-post-remotenetworks.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md)|Create a new [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) object.|
|[Get remoteNetworkHealthEvent](../api/networkaccess-remotenetworkhealthevent-get.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) object.|
|[Update remoteNetworkHealthEvent](../api/networkaccess-remotenetworkhealthevent-update.md)|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md)|Update the properties of a [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) object.|
|[Delete remoteNetworkHealthEvent](../api/networkaccess-logs-delete-remotenetworks.md)|None|Delete a [microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bgpRoutesAdvertisedCount|Int32|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|destinationIp|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|remoteNetworkId|String|**TODO: Add Description**|
|sourceIp|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.remoteNetworkHealthEvent",
  "id": "String (identifier)",
  "remoteNetworkId": "String",
  "createdDateTime": "String (timestamp)",
  "sourceIp": "String",
  "destinationIp": "String",
  "description": "String",
  "bgpRoutesAdvertisedCount": "Integer"
}
```

