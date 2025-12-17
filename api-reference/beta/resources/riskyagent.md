---
title: "riskyAgent resource type"
description: Represents the Microsoft Entra agents that are at risk as evaluated by Microsoft Entra ID Protection based on various signals and machine learning.
author: jiayle27
ms.date: 11/27/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# riskyAgent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft Entra agents that are at risk as evaluated by Microsoft Entra ID Protection based on various signals and machine learning. This API provides programmatic access to all at-risk agents in your Microsoft Entra tenant, the **@odata.type** indicates the exact type of this agent. The supported types are [riskyAgentIdentity](../resources/riskyagentidentity.md), [riskyAgentIdentityBlueprintPrincipal](../resources/riskyagentidentityblueprintprincipal.md), and [riskyAgentUser](../resources/riskyagentuser.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskyagent-list.md)|[riskyAgent](../resources/riskyagent.md) collection|Get a list of the riskyAgent objects and their properties.|
|[Get](../api/riskyagent-get.md)|[riskyAgent](../resources/riskyagent.md)|Read the properties and relationships of [riskyAgent](../resources/riskyagent.md) object.|
|[Dismiss](../api/riskyagent-dismiss.md)|None|Dismiss the risk of one or more riskyAgent objects.|
|[Confirm compromised](../api/riskyagent-confirmcompromised.md)|None|Confirm one or more riskyAgent objects as compromised.|
|[Confirm safe](../api/riskyagent-confirmsafe.md)|None|Confirm one or more riskyAgent objects as safe.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentDisplayName|String|Name of the agent. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|id|String|The object **id** of the [riskyAgentIdentity](../resources/riskyagentidentity.md), [riskyAgentIdentityBlueprintPrincipal](../resources/riskyagentidentityblueprintprincipal.md) or [riskyAgentUser](../resources/riskyagentuser.md). Inherited from [entity](../resources/entity.md). <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|isDeleted|Boolean|Indicates whether the agent is deleted.|
|isEnabled|Boolean|Indicates whether the agent is enabled.|
|isProcessing|Boolean|Indicates whether an agent's risky state is processing in the backend.|
|riskDetail|[riskDetail](../resources/riskdetail.md)|Details of the detected risk of the agent. <br/><br/> Supports `$filter` (`eq`).|
|riskLastModifiedDateTime|DateTimeOffset|The date and time that the risky agent was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. <br/><br/> Supports `$filter` (`eq`, `le`, and `ge`).|
|riskLevel|riskLevel|Level of the detected risky agent. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|riskState|riskState|State of the agent's risk. The possible values are: `none`, `confirmedSafe`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyAgent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyAgent",
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
