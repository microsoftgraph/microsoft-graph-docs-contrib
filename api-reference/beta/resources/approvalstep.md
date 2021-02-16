---
title: "approval step resource type"
description: "The approval step object associated with the accessPackageAssignmentRequest."
localization_priority: Normal
author: "sbounouh"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), the approval step object for decisions associated with the `accessPackageAssignmentRequest`. It is used to distinguish decisions for different steps of an approval workflow that approvers can act on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the step associated with an approval object. Read-only.|
|displayName|String|The step Label provided by the policy creator to identify an approval step. Read-only|
|status|String|The step status, which can be InProgress or Completed. Read-only.|
|assignedToMe|Boolean|Indicates if the step is assigned to the calling user to review. Read-only.|
|reviewedBy|[userIdentity](useridentity.md) collection | The identifier of the reviewer. Read-only.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. Read-only.|
|reviewResult|String|The result of this approval record. Current possible values include: NotReviewed, Approved, Denied.|
|justification|String|The justification associated with the approval step decision.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md) collection|The approval object for decisions associated with the `accessPackageAssignmentRequest`..|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStep",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalStep",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "assignedToMe": true,
  "reviewedBy": [{"@odata.type": "microsoft.graph.userIdentity"}],
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String",
}
```

