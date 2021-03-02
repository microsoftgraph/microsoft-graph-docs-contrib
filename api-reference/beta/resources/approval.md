---
title: "approval resource type"
description: "Approval decisions associated with a request."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the decisions associated with a request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier of the approval decision.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|steps|[approvalStep](../resources/approvalstep.md) collection|A collection of approval steps indicating the result, reviewer, and the date of approval. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)"
}
```

