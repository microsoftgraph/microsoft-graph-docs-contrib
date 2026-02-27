---
title: "agentSkill resource type"
description: "Represents a distinct capability or function that an agent can perform."
author: "jasondou"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# agentSkill resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a distinct capability or function that an agent can perform, as defined in the [agentCardManifest](../resources/agentcardmanifest.md). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A detailed description of the skill, intended to help clients or users understand its purpose and functionality.|
|displayName|String|A human-readable name for the skill.|
|examples|String collection|Example prompts or scenarios that this skill can handle. Provides a hint to the client on how to use the skill.|
|id|String|A unique identifier for the agent's skill.|
|inputModes|String collection|The set of supported input MIME types for this skill, overriding the agent's defaults.|
|outputModes|String collection|The set of supported output MIME types for this skill, overriding the agent's defaults.|
|security|[securityRequirement](../resources/securityrequirement.md) collection|Security schemes necessary for the agent to leverage this skill.|
|tags|String collection|A set of keywords describing the skill's capabilities.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentSkill"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentSkill",
  "id": "String",
  "displayName": "String",
  "description": "String",
  "tags": [
    "String"
  ],
  "examples": [
    "String"
  ],
  "inputModes": [
    "String"
  ],
  "outputModes": [
    "String"
  ],
  "security": [
    {
      "@odata.type": "microsoft.graph.securityRequirement"
    }
  ]
}
```

