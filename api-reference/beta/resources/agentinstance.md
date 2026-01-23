---
title: "agentInstance resource type"
description: "Represents a specific deployed instance of an AI agent in the Microsoft Entra Agent Registry."
author: "jasondou"
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific deployed instance of an AI agent in the Microsoft Entra Agent Registry. An agent instance is associated with an [agentCardManifest](../resources/agentcardmanifest.md) that defines its capabilities, skills, and metadata. Agent instances can be organized into collections and are managed through the [agentRegistry](../resources/agentregistry.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentregistry-list-agentinstances.md)|[agentInstance](../resources/agentinstance.md) collection|Get a list of the agentInstance objects and their properties.|
|[Create](../api/agentregistry-post-agentinstances.md)|[agentInstance](../resources/agentinstance.md)|Create a new agentInstance object.|
|[Get](../api/agentinstance-get.md)|[agentInstance](../resources/agentinstance.md)|Read the properties and relationships of [agentInstance](../resources/agentinstance.md) object.|
|[Update](../api/agentinstance-update.md)|[agentInstance](../resources/agentinstance.md)|Update the properties of an agentInstance object.|
|[Delete](../api/agentregistry-delete-agentinstances.md)|None|Delete an agentInstance object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalInterfaces|[agentInterface](../resources/agentinterface.md) collection|Additional interfaces/transports supported by the agent.|
|agentIdentityBlueprintId|String|Object ID of the [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.|
|agentIdentityId|String|Object ID of the [agentIdentity](../resources/agentidentity.md) object.|
|agentUserId|String|Object ID of the [agentUser](../resources/agentuser.md) associated with the agent. Read-only.|
|createdBy|String|Object ID of the user or application that created the agent instance. Read-only.|
|createdDateTime|DateTimeOffset|Timestamp when agent instance was created. Read-only.|
|displayName|String|Display name for the agent instance.|
|id|String|Unique identifier for the agent instance. Key. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification.|
|managedBy|String|**appId** (referred to as **Application (client) ID** on the Microsoft Entra admin center) of the application managing this agent.|
|originatingStore|String|Name of the store/system where agent originated. For example `Copilot Studio`.|
|ownerIds|String collection|List of object IDs for the owners of the agent instance.|
|preferredTransport|String|Preferred transport protocol. The possible values are `JSONRPC`, `GRPC`, and `HTTP+JSON`.|
|signatures|[agentCardSignature](../resources/agentcardsignature.md) collection|Digital signatures for the agent instance.|
|sourceAgentId|String|Identifier of the agent in the original source system.|
|url|String|Endpoint URL for the agent instance.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|agentCardManifest|[agentCardManifest](../resources/agentcardmanifest.md)|The agent card manifest of the agent instance.|
|collections|[agentCollection](../resources/agentcollection.md) collection|The agent collections that the agent instance is a member of.|

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
