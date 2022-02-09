---
title: "connectionQuota resource type"
description: "Represents the connection quota that contains calculated information about the quota utilization of an external connection."
author: "josmoran"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# connectionQuota resource type

Namespace: microsoft.graph.externalConnectors

Represents the [connection](externalconnectors-externalconnection.md) quota that contains calculated information about the quota utilization of an external connection. It returns the allowed number of items that you can ingest into a connection by considering items ingested for the connection against the tenant-level quota for Microsoft Graph connectors.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get connectionQuota](../api/externalconnectors-connectionquota-get.md) |[connectionQuota](../resources/externalconnectors-connectionquota.md)| Retrieve the properties and relationships of a **connectionQuota**. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| itemsRemaining | Int64 | Returns the minimum number in a range that contains the following data: *items remaining in the connection* and *remaining items at tenant-level*. The following equation represents the formula used to calculate the minimum number: `min(max capacity in the connection – number of items in the connection, tenant quota – number of items indexed in all connections)`. If the connection is nonmonetized (preview connector or preview content experience), then it returns the number of remaining items in the connection. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.connectionQuota",
  "openType": false
}
-->

``` json
{
  "itemsRemaining": "Int64"
}
```
