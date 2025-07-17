---
title: "plannerArchivalInfo resource type"
description: "Represents the identity of the user or app who archived or unarchived a plan, task, or bucket and why."
author: "dianambb"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 06/27/2024
---

# plannerArchivalInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of the user or app who archived or unarchived a [plannerPlan](plannerplan.md), [plannerTask](plannertask.md) or [plannerBucket](plannerbucket.md) and why. Properties of **plannerArchivalInfo** are only set when a plan is [archived](../api/plannerplan-archive.md) or [unarchived](../api/plannerplan-unarchive.md).

An archived entity is read-only.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|justification|String|Read-only. Reason why the entity was archived or unarchived.|
|statusChangedBy|[identitySet](../resources/identityset.md)|Read-only. Identity of the user who archived or unarchived the entity|
|statusChangedDateTime|DateTimeOffset|Read-only. Date and time at which the entity's archive status changed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerArchivalInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerArchivalInfo",
  "justification": "String",
  "statusChangedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "statusChangedDateTime": "String (timestamp)"
}
```

