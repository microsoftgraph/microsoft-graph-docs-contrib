---
title: "activateRunScope resource type"
description: "Represents activating a run scope for a run for a workflow."
author: "AlexFilipin"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# activateRunScope resource type

Namespace: microsoft.graph.identityGovernance

Represents activating a run scope for a [run](../resources/identitygovernance-run.md) of a workflow.

Inherits from [microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|taskScope|microsoft.graph.identityGovernance.activationTaskScopeType|Defines which tasks are in scope for the workflow run. The possible values are: `allTasks`, `failedTasks`, `unknownFutureValue`.|
|userScope|microsoft.graph.identityGovernance.activationUserScopeType|Defines which users are in scope. The possible values are: `allUsers`, `failedUsers`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|run|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|The specific run scope for the workflow being run.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.activateRunScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.activateRunScope",
  "userScope": "String",
  "taskScope": "String"
}
```

