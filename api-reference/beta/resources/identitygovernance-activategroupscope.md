---
title: "activateGroupScope resource type"
description: "The group scope of a run for a workflow."
author: "AlexFilipin"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# activateGroupScope resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group scope of a [run](../resources/identitygovernance-run.md) for a workflow.

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

