---
title: "agentMetadata resource type"
description: "Represents metadata used to identify and evaluate an agent for data loss prevention policies."
author: "psanyal"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agentMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata used to identify and evaluate an agent for data loss prevention (DLP) policies.

Configured in the **agentMetadata** property of [policyLocationAgent](policylocationagent.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|agentAdministrativeUnitId|String|The identifier of the administrative unit associated with the agent. Optional.|
|agentBlueprintId|String|The identifier of the blueprint from which the agent was created. Optional.|
|agentCategory|String|The category of the agent, for example, `Agents.Foundry.MicrosoftAzure`, `Agents.Copilot.Studio`, or `Agents.Local`. Optional.|
|agentOwner|String|The owner associated with the agent. Optional.|
|agentPublisher|String|The publisher associated with the agent. Optional.|
|altAgentIds|String collection|Alternate identifiers that can identify the agent. Required when **agentMetadata** is provided. Use an empty collection (`[]`) when the agent has no alternate identifiers.|
|isEntraAgentId|Boolean|Indicates whether the **value** property of the associated [policyLocationAgent](policylocationagent.md) is a Microsoft Entra agent ID. Required when **agentMetadata** is provided.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentMetadata"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.agentMetadata",
  "agentAdministrativeUnitId": "String",
  "agentBlueprintId": "String",
  "agentCategory": "String",
  "agentOwner": "String",
  "agentPublisher": "String",
  "altAgentIds": [
    "String"
  ],
  "isEntraAgentId": "Boolean"
}
```
