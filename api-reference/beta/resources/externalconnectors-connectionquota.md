---
title: "connectionQuota resource type"
description: "Represents the connection quota that contains calculated information about the quota utilization of an external connection."
author: "snlraju-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# connectionQuota resource type

Namespace: microsoft.graph.externalConnectors

Represents the [connection](externalconnectors-externalconnection.md) quota that contains calculated information about the quota utilization of an external connection. It returns the allowed number of items that you can ingest into a connection by considering items ingested for the connection against the tenant-level quota for Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get](../api/externalconnectors-connectionquota-get.md) |[connectionQuota](../resources/externalconnectors-connectionquota.md)| Retrieve the properties and relationships of a **connectionQuota**. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| itemsRemaining | Int64 | The minimum of two values, one representing the *items remaining in the connection* and the other *remaining items at tenant-level*. <br/>The following equation represents the formula used to calculate the minimum number:<br/> min (\{_&#65279;max capacity in the connection_\} – \{_&#65279;number of items in the connection_\}, \{_&#65279;tenant quota_\} – \{_&#65279;number of items indexed in all connections_\}). <br/>If the connection is not monetized, such as in a preview connector or preview content experience, then this property is simply the number of remaining items in the connection. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
