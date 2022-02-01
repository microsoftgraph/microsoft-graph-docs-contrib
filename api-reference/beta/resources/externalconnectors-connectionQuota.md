---
title: "connectionQuota resource type"
description: "Represents the [connection](externalconnectors-externalconnection.md) quota that contains calculated information about the quota utilization of an external connection."
author: "josmoran"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# connectionQuota resource type

Namespace: microsoft.graph.externalConnectors

The [connection](externalconnectors-externalconnection.md) quota contains calculated information on the connection's quota utilization. It returns the allowed number of items that you can ingest into a connection by considering items ingested for the connection against the tenant-level quota for Microsoft Graph connectors.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get connectionQuota](../api/externalconnectors-connectionQuota-get.md) |[connectionQuota](../resources/externalconnectors-connectionQuota.md)| Retrieve the properties and relationships of a **connectionQuota**. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
| itemsRemaining | Int64 | Returns the minimum of **items remaining in the connection** and **remaining items at tenant-level** which is represented by this equation: `min(Max capacity in the connection – Number of items in connection, Tenant Quota – Number of items indexed in all connections)`. If the connection is non-monetized (preview connector or preview content experience), then it returns the number of remaining items in the connection. |

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
  "itemsRemaining": Int64
}
```

