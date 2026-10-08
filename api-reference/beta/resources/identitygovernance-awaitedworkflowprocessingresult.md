---
title: "awaitedWorkflowProcessingResult resource type"
description: "Represents the result of a workflow execution that waits for completion."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# awaitedWorkflowProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a workflow execution that waits for completion. This type is returned by the [activateAndWait](../api/identitygovernance-workflow-activateandwait.md) action on the [workflow](../resources/identitygovernance-workflow.md) resource.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|processingStatus|[microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus](../resources/enums-identitygovernance-lifecycleworkflowprocessingstatus.md)|The processing status of the workflow execution. |
|statusReasons|String collection|A collection of reasons for the current processing status. May be empty.|
|subject|[microsoft.graph.identityGovernance.workflowSubject](../resources/identitygovernance-workflowsubject.md)|The subject that was processed by the workflow.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.awaitedWorkflowProcessingResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.awaitedWorkflowProcessingResult",
  "processingStatus": "String",
  "statusReasons": [
    "String"
  ],
  "subject": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
  }
}
```
