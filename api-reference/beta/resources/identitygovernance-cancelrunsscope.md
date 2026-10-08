---
title: "cancelRunsScope resource type"
description: "Defines a set of workflow runs to cancel when using the cancelProcessing action."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/26/2026
---

# cancelRunsScope resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a set of [workflow](identitygovernance-workflow.md) runs to cancel when using the [cancelProcessing](../api/identitygovernance-workflow-cancelprocessing.md) action. Only runs that are currently in `queued` or `inProgress` status can be cancelled.

Inherits from [cancelScope](identitygovernance-cancelscope.md).

## Properties

None.

## Relationships

|Property|Type|Description|
|:---|:---|:---|
|runs|[microsoft.graph.identityGovernance.run](identitygovernance-run.md) collection|The workflow runs to cancel. Currently limited to 1 run per request. Required.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.cancelRunsScope",
  "baseType": "microsoft.graph.identityGovernance.cancelScope"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.cancelRunsScope"
}
```
