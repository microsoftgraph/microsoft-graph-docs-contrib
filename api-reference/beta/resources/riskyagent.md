---
title: "riskyAgent resource type"
description: 'Identity Protection of agents - riskyAgent resource type'
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# riskyAgent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Microsoft Entra agents that are at risk. Microsoft Entra ID Protection continually evaluates agentic risk based on various signals and machine learning. This API provides programmatic access to all at-risk aagents in your Microsoft Entra tenant.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identityprotectionroot-list-riskyagents.md)|[riskyAgent](../resources/riskyagent.md) collection|Get a list of the riskyAgent objects and their properties.|
|[Get](../api/riskyagent-get.md)|[riskyAgent](../resources/riskyagent.md)|Read the properties and relationships of [riskyAgent](../resources/riskyagent.md) object.|
|[dismiss](../api/riskyagent-dismiss.md)|None|Dismiss the risk of one or more riskyAgent objects.|
|[confirmCompromised](../api/riskyagent-confirmcompromised.md)|None|Confirm one or more riskyAgent objects as compromised.|
|[confirmSafe](../api/riskyagent-confirmsafe.md)|None|Confirm one or more riskyAgent objects as safe.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentDisplayName|String|Name of the agent.|
|id|String|Unique ID of the agent. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isDeleted|Boolean|Indicates whether the agent is deleted.|
|isEnabled|Boolean|Indicates whether the agent is enabled.|
|isProcessing|Boolean|Indicates whether an agent's risky state is being processed by the backend.|
|riskDetail|riskDetail|Details of the detected risk of the agent. The possible values are: `none`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`.|
|riskLastModifiedDateTime|DateTimeOffset|The date and time that the risky agent was last updated. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|riskLevel|riskLevel|Level of the detected risky agent. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the user's risk. The possible values are: `none`, `confirmedSafe`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyAgent",
  "baseType": "microsoft.graph.entity",
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
  "riskDetail": "String",
  "riskLevel": "String",
  "riskState": "String"
}
```

