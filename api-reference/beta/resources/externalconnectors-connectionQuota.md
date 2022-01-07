---
title: "connectionQuota resource type"
description: "The connection quota contains calculated information on the connection's quota utilization."
author: "josmoran"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# connectionQuota resource type

Namespace: microsoft.graph.externalConnectors

The [connection](externalconnectors-externalconnection.md) quota contains calculated information on the connection's quota utilization. It returns the allowed number of items you are able to ingest into a connection by taking into account items ingested for the connection against the overall tenant-level graph connectors quota.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get quota](../api/externalconnectors-connectionQuota-get.md) |[connectionQuota](../resources/externalconnectors-connectionQuota.md)| calculated information on the connection's quota utilization. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
| itemsRemaining | Int64 | Returns minimum of **items remaining in connection** and **remaining items at tenant-level** which is represented by this equation: `min(Max capacity in connection – Number of items in connection, Tenant Quota – Number of items indexed in all connections)`. If connection is non-monetized (preview connector or preview content experience), then returns the number of remaining items in connection. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.schema",
  "openType": false
}
-->
``` json
{
  "itemsRemaining": 700000
}
```

