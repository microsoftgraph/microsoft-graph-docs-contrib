---
title: "evaluation resource type"
description: "Represents an evaluation in a Security Copilot prompt."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# evaluation resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an evaluation in a Security Copilot [prompt](../resources/security-securitycopilot-prompt.md).

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-securitycopilot-prompt-list-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md) collection|Get a list of the evaluation objects and their properties.|
|[Create](../api/security-securitycopilot-prompt-post-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md)|Create a new evaluation object.|
|[Get](../api/security-securitycopilot-evaluation-get.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.evaluation](../resources/security-securitycopilot-evaluation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|Evaluation completion time.|
|createdDateTime|DateTimeOffset|Evaluation created time.|
|executionCount|Int64|Evaluation execution count.|
|id|String|Represents the unique ID of the Security Copilot evaluation. Inherits from [entity](../resources/entity.md).|
|isCancelled|Boolean|Evaluation cancellation status.|
|lastModifiedDateTime|DateTimeOffset|Evaluation modified time.|
|result|[microsoft.graph.security.securityCopilot.evaluationResult](../resources/security-securitycopilot-evaluationresult.md)|Evaluation results collection.|
|runStartDateTime|DateTimeOffset|Evaluation Run start time.|
|state|microsoft.graph.security.securityCopilot.evaluationState|Evaluation state during poll. The possible values are: `unknown`, `created`, `running`, `completed`, `cancelled`, `pending`, `deferred`, `waitingForInput`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.securityCopilot.evaluation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.evaluation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "runStartDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "executionCount": "Integer",
  "isCancelled": "Boolean",
  "result": {
    "@odata.type": "microsoft.graph.security.securityCopilot.evaluationResult"
  },
  "state": "String"
}
```

