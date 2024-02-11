---
title: "plannerBaseApprovalAttachment resource type"
description: "The **plannerBaseApprovalAttachment** resource represents the base approval attachment, that will added on a [plannerTask](plannertask.md)."
author: "ShravanthiReddy"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerBaseApprovalAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerBaseApprovalAttachment** resource represents the base approval attachment, that will added on a [plannerTask](plannertask.md).
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|plannerApprovalStatus|Status of the approval.The possible values are: `requested`, `approved`, `rejected`, `cancelled`, `unknownFutureValue`.|

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

