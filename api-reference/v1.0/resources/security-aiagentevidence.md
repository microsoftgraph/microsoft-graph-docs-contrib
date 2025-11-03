---
title: "aiAgentEvidence resource type"
description: "Represents an AI agent entity reported in a security detection alert."
author: "ofirBinshtok"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# aiAgentEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a aiAgent that is reported in the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|AgentName|String|The display name for the AI agent.|
|agentId|String|The unique identifier for the AI agent.|
|hostingPlatformType|[microsoft.graph.security.aiAgentPlatform](#aiAgentPlatform-values)|Type of the platform the agent runs on: 'Unknown,' 'AzureAIFoundry', 'CopilotStudio', 'Copilot'.|
|instructions|String|The instructions of the agent.|


### aiAgentPlatform values

|Member|Description|
|:-----|:----------|
|unknown|Plaform value is unknown or not specified.|
|AzureAIFoundry|Plaform value is Azure AI Foundry.|
|Copilot Studio|Plaform value is Copilot Studio.|
|Copilot|Plaform value is Azure AI Foundry.|
|unknownFutureValue|Evolvable enumeration value. Don't use.|


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.aiAgentEvidence"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.security.aiAgentEvidence",
  "AgentName": "String",
  "agentId": "String",
  "hostingPlatformType": "microsoft.graph.security.aiAgentPlatform",
  "instructions": "String",
}
```