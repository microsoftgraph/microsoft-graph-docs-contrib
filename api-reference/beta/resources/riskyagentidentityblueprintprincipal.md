---
title: "riskyAgentIdentityBlueprintPrincipal resource type"
description: 'Identity Protection of agents - riskyAgentIdentityBlueprintPrincipal resource type'
author: jiayle27
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# riskyAgentIdentityBlueprintPrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra [agent identity blueprint principal](../resources/agentidentityblueprintprincipal.md) that is at risk. Microsoft Entra ID Protection continually evaluates agentic risk based on various signals and machine learning.

Inherits from [riskyAgent](../resources/riskyagent.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentDisplayName|String|Name of the agent. Inherited from [riskyAgent](../resources/riskyagent.md). <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|id|String|The object **id** of the [agent identity blueprint principal](../resources/agentidentityblueprintprincipal.md). Inherited from [entity](../resources/entity.md). <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|isDeleted|Boolean|Indicates whether the agent is deleted. Inherited from [riskyAgent](../resources/riskyagent.md).|
|isEnabled|Boolean|Indicates whether the agent is enabled. Inherited from [riskyAgent](../resources/riskyagent.md).|
|isProcessing|Boolean|Indicates whether an agent's risky state is processing in the backend. Inherited from [riskyAgent](../resources/riskyagent.md).|
|riskDetail|riskDetail|Details of the detected risk of the agent. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `none`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`. <br/><br/> Supports `$filter` (`eq`).|
|riskLastModifiedDateTime|DateTimeOffset|The date and time that the risky agent was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. Inherited from [riskyAgent](../resources/riskyagent.md). <br/><br/> Supports `$filter` (`eq`, `le`, and `ge`).|
|riskLevel|riskLevel|Level of the detected risky agent. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|riskState|riskState|State of the agent's risk. Inherited from [riskyAgent](../resources/riskyagent.md). The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyAgentIdentityBlueprintPrincipal",
  "baseType": "microsoft.graph.riskyAgent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyAgentIdentityBlueprintPrincipal",
  "id": "String (identifier)",
  "agentDisplayName": "String",
  "isDeleted": "Boolean",
  "isEnabled": "Boolean",
  "isProcessing": "Boolean",
  "riskLastModifiedDateTime": "String (timestamp)",
  "riskState": "String",
  "riskLevel": "String",
  "riskDetail": "String"
}
```

