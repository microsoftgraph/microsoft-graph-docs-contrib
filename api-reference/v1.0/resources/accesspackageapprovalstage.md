---
title: "accessPackageApprovalStage resource type"
description: "Used for the stages property of approval settings. Specifies the primary, fallback, and escalation approvers of each stage."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageApprovalStage complex type

Namespace: microsoft.graph

Used for the **stages** property of [approval settings](accesspackageassignmentapprovalsettings.md) in an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBeforeAutomaticDenial|Duration|The number of days that a request can be pending a response before it is automatically denied.|
|durationBeforeEscalation|Duration|If escalation is required, the time a request can be pending a response from a primary approver.|
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection|If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. |
|fallbackEscalationApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback escalation approvers.|
|fallbackPrimaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback primary approvers.|
|isApproverJustificationRequired|Boolean|Indicates whether the approver is required to provide a justification for approving a request.|
|isEscalationEnabled|Boolean|If `true`, then one or more **escalationApprovers** are configured in this approval stage.|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who will be asked to approve requests. A collection of [singleUser](singleuser.md), [groupMembers](groupmembers.md), [requestorManager](requestormanager.md), [internalSponsors](internalsponsors.md) or [externalSponsors](externalsponsors.md).|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageApprovalStage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageApprovalStage",
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


