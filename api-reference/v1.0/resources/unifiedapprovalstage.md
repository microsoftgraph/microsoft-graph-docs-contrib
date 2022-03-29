---
title: "unifiedApprovalStage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedApprovalStage resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalStageTimeOutInDays|Int32|**TODO: Add Description**|
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection|**TODO: Add Description**|
|escalationTimeInMinutes|Int32|**TODO: Add Description**|
|isApproverJustificationRequired|Boolean|**TODO: Add Description**|
|isEscalationEnabled|Boolean|**TODO: Add Description**|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unifiedApprovalStage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedApprovalStage",
  "approvalStageTimeOutInDays": "Integer",
  "isApproverJustificationRequired": "Boolean",
  "escalationTimeInMinutes": "Integer",
  "primaryApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "isEscalationEnabled": "Boolean",
  "escalationApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ]
}
```

