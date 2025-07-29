---
title: "accessPackageDynamicApprovalStage resource type"
description: "Specifies a decision stage in an approval in entitlement management."
author: "vikama-microsoft"
ms.date: 07/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageDynamicApprovalStage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies a decision stage in a dynamic [approval](approval.md) in entitlement management.


Inherits from [approvalStage](../resources/approvalstage.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvalStageTimeOutInDays|Int32|The number of days that a request can be pending a response before it is automatically denied. Inherited from [approvalStage](../resources/approvalstage.md).|
|escalationApprovers|[userSet](../resources/userset.md) collection|The users who are asked to approve requests if escalation is enabled and the primary approvers don't respond before the escalation time. This property can be a collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), and [externalSponsors](externalsponsors.md). When you create or update a [policy](accesspackageassignmentpolicy.md), if there are no escalation approvers, or escalation approvers aren't required for the stage, assign an empty collection to this property. Inherited from [approvalStage](../resources/approvalstage.md).|
|escalationTimeInMinutes|Int32|The time a request can be pending a response from a primary approver before it can be escalated to the escalation approvers. Inherited from [approvalStage](../resources/approvalstage.md).|
|isApproverJustificationRequired|Boolean|Indicates whether the approver must provide justification for their response. Inherited from [approvalStage](../resources/approvalstage.md).|
|isEscalationEnabled|Boolean|Indicates whether escalation if enabled. Inherited from [approvalStage](../resources/approvalstage.md).|
|primaryApprovers|[userSet](../resources/userset.md) collection|The primary approvers of this stage. Inherited from [approvalStage](../resources/approvalstage.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customExtension|[customCalloutExtension](../resources/customcalloutextension.md)|Defines the configuration for apps that can extend the customer's identity flows.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageDynamicApprovalStage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageDynamicApprovalStage",
  "approvalStageTimeOutInDays": "Integer",
  "isApproverJustificationRequired": "Boolean",
  "isEscalationEnabled": "Boolean",
  "escalationTimeInMinutes": "Integer",
  "primaryApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "escalationApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ]
}
```

