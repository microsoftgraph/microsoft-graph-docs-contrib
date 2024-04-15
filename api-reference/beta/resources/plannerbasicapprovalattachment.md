---
title: "plannerBasicApprovalAttachment resource type"
description: "The **plannerBasicApprovalAttachment** resource represents the approval attachment, which is added to a plannerTask."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerBasicApprovalAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerBasicApprovalAttachment** resource represents the approval attachment, of type basic, which is created by the approval extensibility service and is added to a [plannerTask](plannertask.md).

Inherits from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|Read-only. The identifier of the approval in the approval service|
|status|[plannerApprovalStatus](../resources/plannerbaseapprovalattachment.md#plannerapprovalstatus-values)|The status of the approval. Inherited from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md). The possible values are: `requested`, `approved`, `rejected`, `cancelled`, `unknownFutureValue`. Read-only.

### plannerApprovalStatus values 

| Member             | Description                                      |
|:-------------------|:-------------------------------------------------|
| requested          | The default status of the approval               |
| approved           | When the approver approves the approval          |
| rejected           | When the approver rejects the approval           |
| cancelled          | When the requestor cancels the approval          |
| unknownFutureValue | The unkonwnFutureValue                           |

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

