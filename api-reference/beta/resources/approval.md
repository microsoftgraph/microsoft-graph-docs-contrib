---
title: "approval resource type"
description: "**TODO: Add Description**"
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the decisions associated with a request. A single step request can have one step associated with it which approvers can act on. A multi-step request can have multiple steps associated with it. In multi-step approvals, it's important to show both pending and previously completed steps. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the approval. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|completedSteps|[approvalStep](../resources/approvalstep.md) collection|A collection of decisions from the past steps. Read-only. |
|pendingSteps|[approvalStep](../resources/approvalstep.md) collection|A collection of steps to act on currently. In the case of series approval, there is always going to be only one active step which an approver can act on. In the case of parallel approvals, there can be multiple steps that an approver can act on simultaneously. Read-only. |
|request|[request](../resources/request.md)|The associated request associated with the approval. Read-only. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)"
}
```

