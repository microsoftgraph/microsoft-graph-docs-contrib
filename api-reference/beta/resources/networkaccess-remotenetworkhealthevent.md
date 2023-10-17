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

