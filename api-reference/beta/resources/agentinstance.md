---
title: "agentInstance resource type"
description: "Represents a specific deployed instance of an AI agent in the agent registry."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific deployed instance of an AI agent in the agent registry. An agent instance can be associated with an agent card manifest that defines its capabilities, skills, and metadata. Agent instances can be organized into collections and are managed through the agent registry.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentregistry-list-agentinstances.md)|[agentInstance](../resources/agentinstance.md) collection|Get a list of the agentInstance objects and their properties.|
|[Create](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Create a new agentInstance object.|
|[Get](../api/agentinstance-get.md)|[agentInstance](../resources/agentinstance.md)|Read the properties and relationships of [agentInstance](../resources/agentinstance.md) object.|
|[Update](../api/agentinstance-update.md)|[agentInstance](../resources/agentinstance.md)|Update the properties of an agentInstance object.|
|[Delete](../api/agentregistry-delete-agentinstances.md)|None|Delete an agentInstance object.|
|[List agentCardManifest](../api/agentinstance-list-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|Get the agent card manifest referenced by the agent instance.|
|[List collections](../api/agentinstance-list-collections.md)|[agentCollection](../resources/agentcollection.md) collection|List the collections that the agent instance is a member of.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|Additional interfaces/transports supported by the agent (url, transport)|
|agentIdentityBlueprintId|String|Agent identity blueprint identifier|
|agentIdentityId|String|Entra agent identity identifier|
|agentUserId|String|User identifier associated with the agent|
|createdBy|String|User who created the agent instance|
|createdDateTime|DateTimeOffset|Timestamp when agent instance was created|
|displayName|String|Display name for the agent instance|
|id|String|Unique identifier for the agent instance. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification|
|managedBy|String|Application identifier managing this agent|
|originatingStore|String|Name of the store/system where agent originated|
|ownerIds|String collection|List of owner identifiers for the agent instance|
|preferredTransport|String|Preferred transport protocol (JSONRPC, GRPC, HTTP+JSON)|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|Digital signatures for the agent instance (protected, signature, header)|
|sourceAgentId|String|Original agent identifier from source system
|url|String|Endpoint URL for the agent instance|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifest|[agentCardManifest](../resources/agentcardmanifest.md)|Agent card manifest referenced by the agent instance|
|collections|[agentCollection](../resources/agentcollection.md) collection|Agent collections that the agent instance is a member of|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentInstance",
  "id": "String (identifier)",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "displayName": "String",
  "sourceAgentId": "String",
  "agentIdentityBlueprintId": "String",
  "agentIdentityId": "String",
  "agentUserId": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "url": "String",
  "preferredTransport": "String",
  "additionalInterfaces": [
    {
      "@odata.type": "microsoft.graph.agentInterface"
    }
  ],
  "signatures": [
    {
      "@odata.type": "microsoft.graph.agentCardSignature"
    }
  ]
}
```
