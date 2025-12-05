---
title: "logs resource type"
description: "Global Secure Access network logs."
author: miritsadon
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
toc.title: Traffic logs
ms.date: 12/01/2025
---

# logs resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Global Secure Access traffic logs that provide insight into who is accessing what resources, where they're accessing them from, and what action took place.

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|remoteNetworks|[microsoft.graph.networkaccess.remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) collection|A collection of remote network health events.|
|traffic|[microsoft.graph.networkaccess.networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) collection|A network access traffic log entry that contains comprehensive information about network traffic events.|
|connections|[microsoft.graph.networkaccess.connection](../resources/networkaccess-connection.md) collection|An aggregated log entry that contains comprehensive information about network traffic events.|


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

