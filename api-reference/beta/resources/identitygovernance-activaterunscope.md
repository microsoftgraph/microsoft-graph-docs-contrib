---
title: "activateRunScope resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# activateRunScope resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|taskScope|microsoft.graph.identityGovernance.activationTaskScopeType|**TODO: Add Description**. The possible values are: `allTasks`, `failedTasks`, `unknownFutureValue`.|
|userScope|microsoft.graph.identityGovernance.activationUserScopeType|**TODO: Add Description**. The possible values are: `allUsers`, `failedUsers`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|run|[run](../resources/identitygovernance-run.md)|**TODO: Add Description**|

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

