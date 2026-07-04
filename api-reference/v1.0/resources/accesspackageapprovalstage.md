---
title: "accessPackageApprovalStage resource type"
description: "Used for the stages property of approval settings. Specifies the primary, fallback, and escalation approvers of each stage."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# accessPackageApprovalStage resource type

Namespace: microsoft.graph

Used for the **stages** property of [accessPackageAssignmentApprovalSettings](../resources/accesspackageassignmentapprovalsettings.md) in an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approverInformationVisibility|[approverInformationVisibility](#approverinformationvisibility-values)|Indicates whether approver information is visible to the requestor. The possible values are: `default`, `notVisible`, `visible`, `unknownFutureValue`.|
|durationBeforeAutomaticDenial|Duration|The number of days that a request can be pending a response before it is automatically denied.|
|durationBeforeEscalation|Duration|If escalation is required, the time a request can be pending a response from a primary approver.|
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection|If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who are asked to approve requests. |
|fallbackEscalationApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback escalation approvers.|
|fallbackPrimaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback primary approvers.|
|isApproverJustificationRequired|Boolean|Indicates whether the approver is required to provide a justification for approving a request.|
|isEscalationEnabled|Boolean|If `true`, then one or more **escalationApprovers** are configured in this approval stage.|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are asked to approve requests. A collection of [singleUser](../resources/singleuser.md), [groupMembers](../resources/groupmembers.md), [requestorManager](../resources/requestormanager.md), [internalSponsors](../resources/internalsponsors.md), [externalSponsors](../resources/externalsponsors.md), or [targetUserSponsors](../resources/targetusersponsors.md).|

### approverInformationVisibility values

| Member             | Description                                                        |
|:-------------------|:-------------------------------------------------------------------|
| default            | Use the default system setting for approver information visibility.|
| notVisible         | Approver information is not visible to the requestor.             |
| visible            | Approver information is visible to the requestor.                 |
| unknownFutureValue | Do not use.                  |

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
  "approverInformationVisibility": "String",
  "durationBeforeAutomaticDenial": "String (duration)",
  "durationBeforeEscalation": "String (duration)",
  "escalationApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "fallbackEscalationApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "fallbackPrimaryApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "isApproverJustificationRequired": "Boolean",
  "isEscalationEnabled": "Boolean",
  "primaryApprovers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ]
  
}
```

