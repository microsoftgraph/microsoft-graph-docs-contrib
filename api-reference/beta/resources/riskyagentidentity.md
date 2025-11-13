---
title: "riskyAgentIdentity resource type"
description: 'Identity Protection of agents - riskyAgentIdentity resource type'
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# riskyAgentIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra [Agent Identity](../resources/agentidentity.md) that is at risk. Microsoft Entra ID Protection continually evaluates agentic risk based on various signals and machine learning.

Inherits from [riskyAgent](../resources/riskyagent.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentDisplayName|String|Name of the agent. Inherited from [riskyAgent](../resources/riskyagent.md).|
|id|String|The unique identifier for the agent identity. This is equivalent to 'id' from [Agent Identity](../resources/agentidentity.md). Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isDeleted|Boolean|Indicates whether the agent is deleted. Inherited from [riskyAgent](../resources/riskyagent.md).|
|isEnabled|Boolean|Indicates whether the agent is enabled. Inherited from [riskyAgent](../resources/riskyagent.md).|
|isProcessing|Boolean|Indicates whether an agent's risky state is processing in the backend. Inherited from [riskyAgent](../resources/riskyagent.md).|
|riskDetail|riskDetail|Details of the detected risk of the agent. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `none`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`.|
|riskLastModifiedDateTime|DateTimeOffset|The date and time that the risky agent was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Inherited from [riskyAgent](../resources/riskyagent.md).|
|riskLevel|riskLevel|Level of the detected risky agent. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the agent's risk. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyAgentIdentity",
  "baseType": "microsoft.graph.riskyAgent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyAgentIdentity",
  "id": "929da549-7a91-4365-900f-d4ef49a759a0",
  "agentDisplayName": "AgenticRiskyServicePrincipal",
  "isDeleted": false,
  "isEnabled": true,
  "isProcessing": true,
  "riskLastModifiedDateTime": "2025-10-10T22:19:10.1921572Z",
  "riskState": "atRisk",
  "riskLevel": "high",
  "riskDetail": "none"
}
```

