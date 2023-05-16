---
title: "PIM for groups approval resource type"
description: "The approval object associated with an assignmentApprovals."
ms.localizationpriority: medium
author: "ilyal"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# PIM for groups approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

TODO

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[Get approval](../api/pim-for-groups-approval-get.md) | [approval](pim-for-groups-approval.md) | Retrieve the properties of an **approval** object. |


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the approval object.  In entitlement management, it is the same identifier as the identifier of |
|steps|[approvalStep](../resources/pim-for-groups-approvalstep.md) collection|Used to represent the decision associated with a single step in the approval process configured in [approvalStep](../resources/pim-for-groups-approvalstep.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|steps|[approvalStep](../resources/pim-for-groups-approvalstep.md) collection|Used for the **approvalSteps** property of approval|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "baseType": "microsoft.graph.entity",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)",
  "steps": [{
        "@odata.type": "#microsoft.graph.approvalStep"
    }]
}
```
