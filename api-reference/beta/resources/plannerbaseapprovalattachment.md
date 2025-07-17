---
title: "plannerBaseApprovalAttachment resource type"
description: "Represents the base approval attachment that is added to a plannerTask, which contains the common properties that are required for an approval."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 04/16/2024
---

# plannerBaseApprovalAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base approval attachment, which contains the common properties that are required for an approval, that is added to a [plannerTask](plannertask.md). The derived types, such as [plannerBasicApprovalAttachment](plannerbasicapprovalattachment.md), have details corresponding to the type of approval.

This type is abstract.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|[plannerApprovalStatus](../resources/plannerbaseapprovalattachment.md#plannerapprovalstatus-values)|Status of the approval. The possible values are: `requested`, `approved`, `rejected`, `cancelled`, `unknownFutureValue`. Read-only.

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
  "@odata.type": "microsoft.graph.plannerBaseApprovalAttachment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerBaseApprovalAttachment",
  "status": "String"
}
```

