---
title: "unifiedApprovalStage resource type"
description: "Defines the settings of the approval stages in a unifiedRoleManagementPolicyApprovalRule object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedApprovalStage resource type

Namespace: microsoft.graph

Defines the settings of the approval stages in a [unifiedRoleManagementPolicyApprovalRule](unifiedrolemanagementpolicyapprovalrule.md) object. Specifies the primary and escalation approvers of each stage and whether approvals and escalations are required.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalStageTimeOutInDays|Int32| The number of days that a request can be pending a response before it is automatically denied. |
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection| The escalation approvers for this stage when the primary approvers don't respond.|
|escalationTimeInMinutes|Int32|The time a request can be pending a response from a primary approver before it can be escalated to the escalation approvers.|
|isApproverJustificationRequired|Boolean| Indicates whether the approver must provide justification for their reponse.|
|isEscalationEnabled|Boolean| Indicates whether escalation if enabled.|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection| The primary approvers of this stage.|

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

