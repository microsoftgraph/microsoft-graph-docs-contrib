---
title: "accessPackageDynamicApprovalStage resource type"
description: "Specifies a decision stage in an approval in entitlement management."
author: "vikama-microsoft"
ms.date: 09/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageDynamicApprovalStage resource type

Namespace: microsoft.graph

Specifies a decision stage in a dynamic [approval](approval.md) in entitlement management.

Inherits from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBeforeAutomaticDenial|Duration|The number of days that a request can be pending a response before it is automatically denied. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|durationBeforeEscalation|Duration|If escalation is required, the time a request can be pending a response from a primary approver. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|escalationApprovers|[subjectSet](../resources/subjectset.md) collection|If escalation is enabled and the primary approvers do not respond before the escalation time, the escalationApprovers are the users who will be asked to approve requests. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|fallbackEscalationApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback escalation approvers. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|fallbackPrimaryApprovers|[subjectSet](../resources/subjectset.md) collection|The subjects, typically users, who are the fallback primary approvers. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|isApproverJustificationRequired|Boolean|Indicates whether the approver must provide justification for their response. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|isEscalationEnabled|Boolean|Indicates whether escalation if enabled. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|
|primaryApprovers|[subjectSet](../resources/subjectset.md) collection|The primary approvers of this stage. Inherited from [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md).|

## Relationships
None.

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
  "durationBeforeAutomaticDenial": "String (duration)",
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

