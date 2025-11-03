---
title: "aiAgentEvidence resource type"
description: "Represents an AI agent that's reported in the security detection alert."
ms.date: 11/02/2025
author: "ofirBinshtok"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
toc.title: AI agent evidence
---

# aiAgentEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AI agent that's reported in the security detection alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|agentId|String|The unique identifier for the AI agent.|
|agentName|String|The display name for the AI agent.|
|hostingPlatformType|[microsoft.graph.security.aiAgentPlatform](#aiagentplatform-values)|Type of the platform the agent runs on. Possible values are: `unknown`, `azureAIFoundry`, `copilotStudio`, `copilot`, `unknownFutureValue`.|
|instructions|String|The instructions of the agent.|

### aiAgentPlatform values

|Member|Description|
|:-----|:----------|
|unknown|The plaform value is unknown or not specified.|
|azureAIFoundry|The plaform value is Azure AI Foundry.|
|copilotStudio|The plaform value is Copilot Studio.|
|copilot|The plaform value is Copilot.|
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
  "agentId": "String",
  "agentName": "String",
  "hostingPlatformType": "String",
  "instructions": "String"
}
```
