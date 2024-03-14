---
title: "approvalStep resource type"
description: "Specifies a decision step in an approval in entitlement management and PIM."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "resourcePageType"
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies a decision step in an [approval](approval.md) in entitlement management and PIM.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List approvalSteps](../api/approval-list-steps.md) | [approvalStep](approvalstep.md) collection | List the **approvalStep** objects associated with an **approval** object in entitlement management and PIM. |
|[Get approvalStep](../api/approvalstep-get.md) | [approvalStep](approvalstep.md) | Retrieve the properties of an **approvalStep** object in entitlement management and PIM. |
|[Update approvalStep](../api/approvalstep-update.md) | None | Apply approve or deny decision on an **approvalStep** object in entitlement management and PIM. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|Indicates whether the step is assigned to the calling user to review. Read-only.|
|displayName|String|The label provided by the policy creator to identify an approval step. Read-only.|
|id|String|The identifier of the step associated with an approval object. Read-only.|
|justification|String|The justification associated with the approval step decision.|
|reviewResult|String|The result of this approval record. Possible values include: `NotReviewed`, `Approved`, `Denied`.|
|reviewedBy|[userIdentity](useridentity.md) collection | The identifier of the reviewer. `00000000-0000-0000-0000-000000000000` if the assigned reviewer hasn't reviewed. Read-only.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|status|String|The step status. Possible values: `InProgress`, `Initializing`, `Completed`, `Expired`. Read-only.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md) collection| The approval object for decisions associated with the `accessPackageAssignmentRequest` in entitlement management, the `roleAssignmentScheduleRequest` in PIM for Microsoft Entra roles, or the `assignmentScheduleRequest` in PIM for groups.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStep",
}
-->
``` json
{
   "@odata.type":"#microsoft.graph.approvalStep",
   "id":"String (identifier)",
   "displayName":"String",
   "status":"String",
   "assignedToMe":true,
   "reviewedBy": [{"@odata.type": "microsoft.graph.userIdentity"}],
   "reviewedDateTime":"String (timestamp)",
   "reviewResult":"String",
   "justification":"String"
}
```
