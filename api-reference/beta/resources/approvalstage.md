---
title: "approvalStage resource type"
description: "In entitlement management, used for the approvalStages property of approval settings in the requestApprovalSettings property of an access package assignment policy. Specifies the primary, fallback, and escalation approvers of each stage. In PIM, defines the settings of the approval stages in a unifiedRoleManagementPolicyApprovalRule object."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
ms.date: 10/04/2024
---

# approvalStage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In entitlement management, used for the **approvalStages** property of approval settings in the **requestApprovalSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.

In PIM, defines the settings of the approval stages in a [unifiedRoleManagementPolicyApprovalRule](unifiedrolemanagementpolicyapprovalrule.md) object. Specifies the primary and escalation approvers of each stage and whether approvals and escalations are required.

## Properties

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| approvalStageTimeOutInDays |Int32 | The number of days that a request can be pending a response before it is automatically denied. |
| approverInformationVisibility|[approverInformationVisibility](approverInformationVisibility.md) | Indicates whether approver information is visible to the requestor. The possible values are: `no`, `yes`, `default`, `unknownFutureValue`. |
| isApproverJustificationRequired |Boolean | Indicates whether the approver is required to provide a justification for approving a request. |
| isEscalationEnabled |Boolean | If true, then one or more escalation approvers are configured in this approval stage. |
| escalationTimeInMinutes |Int32 | If escalation is required, the time a request can be pending a response from a primary approver. |
| primaryApprovers | [userSet](userset.md) collection| The users who are asked to approve requests. A collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), [externalSponsors](externalsponsors.md), and [targetUserSponsors](targetusersponsors.md). When creating or updating a [policy](accesspackageassignmentpolicy.md), include at least one **userSet** in this collection. |
| escalationApprovers | [userSet](userset.md) collection| The users who are asked to approve requests if escalation is enabled and the primary approvers don't respond before the escalation time. This property can be a collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), and [externalSponsors](externalsponsors.md). When you create or update a [policy](accesspackageassignmentpolicy.md), if there are no escalation approvers, or escalation approvers aren't required for the stage, assign an empty collection to this property.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approvalStage"
}-->

```json

{
    "approvalStageTimeOutInDays": 14,
    "approverInformationVisibility": "String",
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


