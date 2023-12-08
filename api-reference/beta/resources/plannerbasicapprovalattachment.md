---
title: "plannerBasicApprovalAttachment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerBasicApprovalAttachment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalId|String|**TODO: Add Description**|
|status|plannerApprovalStatus|**TODO: Add Description** Inherited from [plannerBaseApprovalAttachment](../resources/plannerbaseapprovalattachment.md).The possible values are: `requested`, `approved`, `rejected`, `cancelled`, `unknownFutureValue`.|

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

