---
title: "agentRiskDetection resource type"
description: 'Identity Protection of agents - agentRiskDetection resource type'
author: jiayle27
ms.date: 10/24/2025
ms.localizationpriority: medium
ms.subservice: entra-sign-in
doc_type: resourcePageType
---

# agentRiskDetection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Entra ID Protection continually evaluates agent risks based on various signals and machine learning. This API provides programmatic access to all agentic risk detections in your Microsoft Entra environment.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identityprotectionroot-list-agentriskdetection.md)|[agentRiskDetection](../resources/agentriskdetection.md) collection|Get a list of the agentRiskDetection objects and their properties.|
|[Get](../api/agentriskdetection-get.md)|[agentRiskDetection](../resources/agentriskdetection.md)|Read the properties and relationships of [agentRiskDetection](../resources/agentriskdetection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|Date and time that the risky activity occurred. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|additionalInfo|String|Additional information associated with the risk detection.|
|agentDisplayName|String|Name of the agent.|
|agentId|String|Unique ID of the agent.|
|detectedDateTime|DateTimeOffset|Date and time that the risk was detected. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z|
|detectionTimingType|riskDetectionTimingType|Timing of the detected risk (real-time/offline). The possible values are: `notDefined`, `realtime`, `nearRealtime`, `offline`, `unknownFutureValue`.|
|id|String|	Unique ID of the risk detection. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|Date and time that the risk detection was last updated.|
|riskDetail|riskDetail|Details of the detected risk. The possible values are: `none`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`.|
|riskEventType|String|The type of risk event detected. |
|riskEvidence|String|Evidence on the risky activity occurred. |
|riskLevel|riskLevel|Level of the detected risk. The possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|The state of a detected agentic risk. The possible values are: `none`, `confirmedSafe`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|

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

