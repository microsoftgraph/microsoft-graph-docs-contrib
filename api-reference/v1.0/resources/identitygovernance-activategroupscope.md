---
title: "activateGroupScope resource type"
description: "Represents activating a group scope for a run for a workflow."
author: "AlexFilipin"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# activateGroupScope resource type

Namespace: microsoft.graph.identityGovernance

Represents activating a group scope for a [run](../resources/identitygovernance-run.md) of a workflow.

Inherits from [microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The group scope of the workflow being run.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.activateGroupScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.activateGroupScope"
}
```

