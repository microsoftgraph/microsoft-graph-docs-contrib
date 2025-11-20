---
title: "agentRiskDetection resource type"
description: Represents the agentic risk detections as evaluated by Microsoft Entra ID Protection based on various signals and machine learning.
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# agentRiskDetection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the agentic risk detections as evaluated by Microsoft Entra ID Protection based on various signals and machine learning.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identityprotectionroot-list-agentriskdetections.md)|[agentRiskDetection](../resources/agentriskdetection.md) collection|Get a list of the agentRiskDetection objects and their properties.|
|[Get](../api/agentriskdetection-get.md)|[agentRiskDetection](../resources/agentriskdetection.md)|Read the properties and relationships of [agentRiskDetection](../resources/agentriskdetection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|Date and time that the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. <br/><br/> Supports `$filter` (`eq`, `le`, and `ge`).|
|additionalInfo|String|Additional information associated with the risk detection.|
|agentDisplayName|String|Name of the agent. <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|agentId|String|The unique identifier for the agent. This is equivalent to 'id' to the specific agent type. See [riskyAgentIdentity](../resources/riskyagentidentity.md), [riskyAgentIdentityBlueprintPrincipal](../resources/riskyagentidentityblueprintprincipal.md), and [riskyAgentUser](../resources/riskyagentuser.md). <br/><br/> Supports `$filter` (`eq`, `startsWith`).|
|detectedDateTime|DateTimeOffset|Date and time that the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z. <br/><br/> Supports `$filter` (`eq`, `le`, and `ge`).|
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk (real-time/offline). The possible values are: `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`.|
|id|String| Unique ID of the risk detection. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time that the risk detection was last updated. <br/><br/> Supports `$filter` (`eq`, `le`, and `ge`).|
|riskDetail|riskDetail|Details of the detected risk. The possible values are: `none`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`. <br/><br/> Supports `$filter` (`eq`).|
|riskEventType|String|The type of risk event detected. <br/><br/> Supports `$filter` (`eq`).|
|riskEvidence|String|Evidence on the risky activity occurred. <br/><br/> Supports `$filter` (`eq`).|
|riskLevel|riskLevel|Level of the detected risk. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|
|riskState|riskState|The state of a detected agentic risk. The possible values are: `none`, `confirmedSafe`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. <br/><br/> Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentRiskDetection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentRiskDetection",
  "id": "String (identifier)",
  "agentId": "String",
  "agentDisplayName": "String",
  "activityDateTime": "String (timestamp)",
  "detectedDateTime": "String (timestamp)",
  "detectionTimingType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "riskDetail": "String",
  "riskLevel": "String",
  "riskState": "String",
  "riskEventType": "String",
  "riskEvidence": "String",
  "additionalInfo": "String"
}
```

