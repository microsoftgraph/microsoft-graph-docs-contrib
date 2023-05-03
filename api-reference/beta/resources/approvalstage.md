---
title: "approvalStage complex type"
description: "In entitlement management, used for the approvalStages property of approval settings in the requestApprovalSettings property of an access package assignment policy. Specifies the primary, fallback, and escalation approvers of each stage. In PIM, defines the settings of the approval stages in a unifiedRoleManagementPolicyApprovalRule object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# approvalStage complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In entitlement management, used for the **approvalStages** property of approval settings in the **requestApprovalSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.

In PIM, defines the settings of the approval stages in a [unifiedRoleManagementPolicyApprovalRule](unifiedrolemanagementpolicyapprovalrule.md) object. Specifies the primary and escalation approvers of each stage and whether approvals and escalations are required.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| approvalStageTimeOutInDays |Int32 | The number of days that a request can be pending a response before it is automatically denied. |
| isApproverJustificationRequired |Boolean | Indicates whether the approver is required to provide a justification for approving a request. |
| isEscalationEnabled |Boolean | If true, then one or more escalation approvers are configured in this approval stage. |
| escalationTimeInMinutes |Int32 | If escalation is required, the time a request can be pending a response from a primary approver. |
| primaryApprovers | [userSet](userset.md) collection| The users who will be asked to approve requests. A collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), [externalSponsors](externalsponsors.md) and [targetUserSponsors](targetusersponsors.md). When creating or updating a [policy](accesspackageassignmentpolicy.md), include at least one **userSet** in this collection. |
| escalationApprovers | [userSet](userset.md) collection| If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. This can be a collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md) and [externalSponsors](externalsponsors.md).  When creating or updating a [policy](accesspackageassignmentpolicy.md), if there are no escalation approvers, or escalation approvers are not required for the stage, the value of this property should be an empty collection.|

## JSON representation

The following is a JSON representation of the request approval stage.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approvalStage"
}-->

```json

{
    "approvalStageTimeOutInDays": 14,
    "isApproverJustificationRequired": true,
    "isEscalationEnabled": true,
    "escalationTimeInMinutes": 11520,
    "primaryApprovers": [{"@odata.type": "microsoft.graph.userSet"}],
    "escalationApprovers": [{"@odata.type": "microsoft.graph.userSet"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "approvalSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


