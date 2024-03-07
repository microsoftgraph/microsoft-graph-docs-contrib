---
title: "plannerBasicApprovalAttachment resource type"
description: "The **plannerBasicApprovalAttachment** resource represents the approval attachment, of type basic, which is created by the approval service and is added to a [plannerTask](plannertask.md)."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerBasicApprovalAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerBasicApprovalAttachment** resource represents the approval attachment, of type basic, which is created by the approval service and is added to a [plannerTask](plannertask.md).

Inherits from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|Read-only. Identifier of the approval, in approval service|
|status|[plannerApprovalStatus](../resources/plannerbaseapprovalattachment.md#plannerapprovalstatus-values)|Status of the approval. Inherited from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md). The possible values are: `requested`, `approved`, `rejected`, `cancelled`, `unknownFutureValue`. Read-only. You must use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

### plannerApprovalStatus values 

| Member             |
|:-------------------|
| requested          |
| approved           |
| rejected           |
| cancelled          |
| unknownFutureValue |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerBasicApprovalAttachment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerBasicApprovalAttachment",
  "status": "String",
  "approvalId": "String"
}
```

