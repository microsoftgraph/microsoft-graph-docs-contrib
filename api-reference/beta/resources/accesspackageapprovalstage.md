---
title: "accessPackageApprovalStage resource type"
description: "Used for the stages property of approval settings. Specifies the primary, fallback, and escalation approvers of each stage."
author: "vikama-microsoft"
ms.date: 07/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageApprovalStage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **stages** property of approval settings in an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBeforeAutomaticDenial|Duration|The number of days that a request can be pending a response before it is automatically denied.|
|durationBeforeEscalation|Duration|If escalation is required, the time a request can be pending a response from a primary approver.|
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection|If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. |
|fallbackEscalationApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback escalation approvers.|
|fallbackPrimaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback primary approvers.|
|approverInformationVisibility|[approverInformationVisibility](approverInformationVisibility.md)|Indicates whether approver information is visible to the requestor. The possible values are: `no`, `yes`, `default`, `unknownFutureValue`.|
|isApproverJustificationRequired|Boolean|Indicates whether the approver is required to provide a justification for approving a request.|
|isEscalationEnabled|Boolean|If `true`, then one or more **escalationApprovers** are configured in this approval stage.|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who will be asked to approve requests. A collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md), [externalSponsors](externalsponsors.md), or [targetUserSponsors](targetusersponsors.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageApprovalStage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageApprovalStage",
  "durationBeforeAutomaticDenial": "String (duration)",
  "approverInformationVisibility": "String",
  "isApproverJustificationRequired": "Boolean",
  "isEscalationEnabled": "Boolean",
  "durationBeforeEscalation": "String (duration)",
  "primaryApprovers": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
    }
  ],
  "fallbackPrimaryApprovers": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
    }
  ],
  "escalationApprovers": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
    }
  ],
  "fallbackEscalationApprovers": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.ruleBasedSubjectSet"
    }
  ]
}
```
