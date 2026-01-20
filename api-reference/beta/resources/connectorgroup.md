---
title: "connectorGroup resource type"
description: "Represents an Application Proxy connectorGroup."
ms.localizationpriority: medium
ms.subservice: "entra-applications"
author: "dhruvinrshah"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# connectorGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Each [Microsoft Entra application proxy](/entra/identity/app-proxy/overview-what-is-app-proxy) connector is always part of a connector group. All the connectors that belong to the same connector group act as a separate unit for high-availability and load balancing. If you don't create connector groups, all your connectors will be part of the default group. When configuring an application with Application Proxy, you must also specify which connector group to assign the application to.

After a connector group is created, you can add or move connectors to the connector group by using [Add connector](../api/connectorgroup-post-members.md). You can also use [Add application](../api/connectorgroup-post-applications.md) to assign an application to a connector group.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/connectorgroup-list.md) |[connectorGroup](connectorgroup.md) collection | Retrieve a list of connectorGroup objects. |
|[Create](../api/connectorgroup-post.md) |[connectorGroup](connectorgroup.md) collection | Create a connectorGroup object. |
|[Get](../api/connectorgroup-get.md) | [connectorGroup](connectorgroup.md) | Read properties and relationships of a connectorGroup object. |
|[Update](../api/connectorgroup-update.md) | [connectorGroup](connectorgroup.md)| Update a connectorGroup object. |
|[Delete](../api/connectorgroup-delete.md) | None | Delete a connectorGroup object. All connectors must be removed from the connectorGroup before a connectorGroup can be deleted. |
|[List members](../api/connectorgroup-list-members.md) |[connector](connector.md) collection| Get a connector object collection. |
|[List applications](../api/connectorgroup-list-applications.md) |[application](application.md) collection| Get the application object collection associated with the connectorGroup. |
|[Add application](../api/connectorgroup-post-applications.md) |[application](application.md)| Associate an application with the connectorGroup by posting to the applications collection. |
|[Add connector](../api/connectorgroup-post-members.md) |[connector](connector.md)| Add a connector to the connectorGroup by posting to the connectorGroup collection. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|connectorGroupType|connectorGroupType| Indicates the type of hybrid agent. This pre-set by the system. The possible values are: `applicationProxy`, `syncFabric`. Read-only. |
|id|string| Unique identifier for this connectorGroup. Read-only. |
|isDefault|Boolean| Indicates if the connectorGroup is the default connectorGroup. Only a single connector group can be the default connectorGroup and this is pre-set by the system. Read-only. |
|name|string| The name associated with the connectorGroup. |
|region|connectorGroupRegion| The region the connectorGroup is assigned to and will optimize traffic for. This region can only be set if **no connectors or applications** are assigned to the connectorGroup. The possible values are: `nam` (for **North America**), `eur` (for Europe), `aus` (for Australia), `asia` (for Asia), `ind` (for India), and `unknownFutureValue`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|applications|[application](application.md) collection| Read-only. Nullable.|
|members|[connector](connector.md) collection| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connectorGroup"
}-->

```json
{
  "id": "String (identifier)",
  "isDefault": true,
  "name": "String",
  "region": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "connectorGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
