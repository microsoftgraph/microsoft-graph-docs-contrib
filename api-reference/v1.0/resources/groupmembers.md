---
title: "groupMembers resource type"
description: "Identifies a collection of users in the tenant who are allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# groupMembers resource type

Namespace: microsoft.graph


Used in the request, approval, and assignment review settings of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md).

The `@odata.type` value `#microsoft.graph.groupMembers` indicates that this type identifies a collection of users in the tenant who are allowed as requestor, approver, or reviewer, who are the members of a specific group.

In entitlement management, this subtype can be configured in:
- **allowedRequestors** property of [accessPackageAssignmentRequestorSettings](../resources/accesspackageassignmentrequestorsettings.md)
- **primaryApprovers** and **escalationApprovers** properties of [approvalStage](../resources/approvalstage.md) and [accessPackageDynamicApprovalStage](../resources/accesspackagedynamicapprovalstage.md)
- **primaryApprovers**, **fallbackPrimaryApprovers**, **escalationApprovers**, and **fallbackEscalationApprovers** properties of [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md)
- **reviewers** property of [accessPackageAssignmentReviewSettings](../resources/accesspackageassignmentreviewsettings.md) for an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The name of the group in Microsoft Entra ID. Read-only. |
|groupId|String|The ID of the [group](../resources/group.md) in Microsoft Entra ID.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupMembers",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupMembers",
  "groupId": "String",
  "description": "String"
}
```
