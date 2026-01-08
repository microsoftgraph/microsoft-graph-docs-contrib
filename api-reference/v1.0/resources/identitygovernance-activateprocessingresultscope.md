---
title: "activateProcessingResultScope resource type"
description: "Represents activating a processing result scope for a run for a workflow."
author: "AlexFilipin"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# activateProcessingResultScope resource type

Namespace: microsoft.graph.identityGovernance

Represents the processing results scope for a [run](../resources/identitygovernance-run.md) of a workflow.

Inherits from [microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|taskScope|microsoft.graph.identityGovernance.activationTaskScopeType|The specific tasks in the processing result scope. The possible values are: `allTasks`, `failedTasks`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|processingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|The specific processing results for a run of a workflow. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.activateProcessingResultScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.activateProcessingResultScope",
  "taskScope": "String"
}
```

