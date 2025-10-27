---
title: "activateUserScope resource type"
description: "Represents activating a user scope for a run for a workflow."
author: "AlexFilipin"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# activateUserScope resource type

Namespace: microsoft.graph.identityGovernance

Represents activating a user scope for a [run](../resources/identitygovernance-run.md) of a workflow.

Inherits from [microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|users|[microsoft.graph.user](../resources/user.md) collection|The user scope for the workflow run.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.activateUserScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.activateUserScope"
}
```

