---
title: "agentCollection resource type"
description: "Represents a collection of agent instances."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of agent instances. Agent collections provide a way to organize and group related agent instances for management and organizational purposes.

Agent collections allow grouping of agent instances for organizational and access control purposes. Special collections are `Global` and `Quarantined`.

### Reserved Collections
Two system-reserved collections are always available per tenant:

| Collection | ID | Purpose |
|------------|----|---------|
| Global | `00000000-0000-0000-0000-000000000001` | Tenant-wide pool of generally available agents |
| Quarantined | `00000000-0000-0000-0000-000000000002` | Holding area for blocked / review-pending agents | 

#### Key behaviors:

1. Always-present: A GET by reserved ID never returns 404 (synthetic returned if not persisted).
2. Immutability: You can't UPDATE or DELETE a reserved collection, otherwise, a `403 Forbidden` error code with the message "collectionImmutable" is returned.
3. Creation protections: Attempting to create a new collection whose **displayName** matches a reserved one returns `409 Conflict` error code.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentinstance-list-collections.md)|[agentCollection](../resources/agentcollection.md) collection|Get a list of the agentCollection objects and their properties.|
|[Create](../api/agentregistry-post-agentcollections.md)|[agentCollection](../resources/agentcollection.md)|Create a new agentCollection object.|
|[Get](../api/agentcollection-get.md)|[agentCollection](../resources/agentcollection.md)|Read the properties and relationships of [agentCollection](../resources/agentcollection.md) object.|
|[Update](../api/agentcollection-update.md)|None|Update the properties of an agentCollection object.|
|[List members of agentCollection](../api/agentcollection-list-members.md)|[agentInstance](../resources/agentinstance.md) collection|List of [agentInstance](../resources/agentinstance.md) objects in the collection.|
|[Add to collection](../api/agentcollection-post-members.md)|[agentInstance](../resources/agentinstance.md)|Add an [agentInstance](../resources/agentinstance.md) to the agentCollection.|
|[Remove from collection](../api/agentcollection-delete-members.md)|None|Remove an [agentInstance](../resources/agentinstance.md) object from the agentCollection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|Object ID of the user or app that created the agent instance.|
|createdDateTime|DateTimeOffset|Timestamp when agent collection was created.|
|description|String|Description / purpose of the collection.|
|displayName|String|Friendly name of the collection.|
|id|String|Unique identifier for the collection. Key. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last update.|
|managedBy|String|**appId** (referred to as **Application (client) ID** on the Microsoft Entra admin center) of the service principal managing this agent.|
|originatingStore|String|Source system/store where the collection originated. For example `Copilot Studio`.|
|ownerIds|String collection|List of object IDs for the owners of the agent instance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[agentInstance](../resources/agentinstance.md) collection|List of agent instances that are members of this collection. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentCollection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCollection",
  "id": "String (identifier)",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```
