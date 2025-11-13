---
title: "agentCardManifest resource type"
description: "Represents the manifest definition for an AI agent, including its capabilities, skills, security requirements, and metadata."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentCardManifest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the manifest definition for an AI agent, including its capabilities, skills, security requirements, and metadata. An agent card manifest defines how an agent presents itself to users and systems. This resource is associated with [agent instances](../resources/agentinstance.md) through the agent registry.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentinstance-list-agentcardmanifest.md)|[agentCardManifest](../resources/agentcardmanifest.md) collection|Get a list of the agentCardManifest objects and their properties.|
|[Get](../api/agentcardmanifest-get.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Read the properties and relationships of [agentCardManifest](../resources/agentcardmanifest.md) object.|
|[Update](../api/agentcardmanifest-update.md)|[agentCardManifest](../resources/agentcardmanifest.md)|Update the properties of an agentCardManifest object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|capabilities|[agentCapabilities](../resources/agentcapabilities.md)| A declaration of optional capabilities supported by the agent.|
|createdBy|String|Object ID of the user or application that created the agent card manifest. Read-only.|
|createdDateTime|DateTimeOffset|When this agent card manifest was created.|
|defaultInputModes|String collection| Default set of supported input MIME types for all skills, which can be overridden on a per-skill basis.|
|defaultOutputModes|String collection|Default set of supported output MIME types for all skills, which can be overridden on a per-skill basis.|
|description|String|A human-readable description of the agent.|
|displayName|String|A human-readable display name of the agent.|
|documentationUrl|String|URL to agent's documentation.|
|iconUrl|String|URL to agent's icon image.|
|id|String|ID of the agent card manifest. Inherited from [entity](../resources/entity.md). Key.|
|lastModifiedDateTime|DateTimeOffset|When this agent card manifest was last modified.|
|managedBy|String|**appId** (referred to as **Application (client) ID** on the Microsoft Entra admin center) of the application managing this agent manifest.|
|originatingStore|String|Name of the store/system where agent originated. For example `Copilot Studio`.|
|ownerIds|String collection|List of object IDs for the owners of the agent card manifest.|
|protocolVersion|String|Protocol version supported by the agent.|
|provider|[agentProvider](../resources/agentprovider.md)|Information about the organization providing the agent.|
|security|[securityRequirement](../resources/securityrequirement.md) collection|Security requirements - array of security scheme references.|
|securitySchemes|[securitySchemes](../resources/securityschemes.md)|Dictionary of security scheme definitions keyed by scheme name.|
|skills|[agentSkill](../resources/agentskill.md) collection|Skills/capabilities that the agent can perform|
|supportsAuthenticatedExtendedCard|Boolean|Whether agent supports authenticated extended card retrieval|
|version|String|Version of the agent implementation|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentCardManifest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCardManifest",
  "id": "String (identifier)",
  "ownerIds": [
    "String"
  ],
  "managedBy": "String",
  "originatingStore": "String",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "protocolVersion": "String",
  "displayName": "String",
  "description": "String",
  "iconUrl": "String",
  "provider": {
    "@odata.type": "microsoft.graph.agentProvider"
  },
  "version": "String",
  "documentationUrl": "String",
  "capabilities": {
    "@odata.type": "microsoft.graph.agentCapabilities"
  },
  "securitySchemes": {
    "@odata.type": "microsoft.graph.securitySchemes"
  },
  "security": [
    {
      "@odata.type": "microsoft.graph.securityRequirement"
    }
  ],
  "defaultInputModes": [
    "String"
  ],
  "defaultOutputModes": [
    "String"
  ],
  "skills": [
    {
      "@odata.type": "microsoft.graph.agentSkill"
    }
  ],
  "supportsAuthenticatedExtendedCard": "Boolean"
}
```
