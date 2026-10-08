---
title: "singleUser resource type"
description: "Identifies a user in the tenant who is allowed as requestor, approver, or reviewer."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/04/2024
---
# singleUser resource type

Namespace: microsoft.graph

Used in the request, approval, and assignment review settings of an [accessPackageAssignmentPolicy](../resources/accesspackageassignmentpolicy.md). The `@odata.type` value `#microsoft.graph.singleUser` indicates that this userSet identifies a specific user in the tenant who is allowed as a requestor, approver, or reviewer.

In entitlement management, this subtype can be configured in:
- **allowedRequestors** property of [accessPackageAssignmentRequestorSettings](../resources/accesspackageassignmentrequestorsettings.md)
- **primaryApprovers** and **escalationApprovers** properties of [approvalStage](../resources/approvalstage.md) and [accessPackageDynamicApprovalStage](../resources/accesspackagedynamicapprovalstage.md)
- **primaryApprovers**, **fallbackPrimaryApprovers**, **escalationApprovers**, and **fallbackEscalationApprovers** properties of [accessPackageApprovalStage](../resources/accesspackageapprovalstage.md)
- **reviewers** property of [accessPackageAssignmentReviewSettings](../resources/accesspackageassignmentreviewsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The name of the user in Microsoft Entra ID. Read-only. |
|userId|String|The ID of the [user](../resources/user.md) in Microsoft Entra ID.|

## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleUser",
  "baseType": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleUser",
  "userId": "String",
  "description": "String"
}
```
