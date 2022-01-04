---
title: "approvalStage resource type"
description: "The approvalStage object associated with a userConsentRequest."
author: "psignoret"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# approvalStage resource type

Namespace: microsoft.graph

Specifies decision stages in the approval.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvalStages](../api/entitlementmanagement-accesspackageassignmentapproval-stage-list.md) | [approvalStage](approvalstage.md) collection | List the **approvalStage** objects associated with an **approval** object in entitlement management. |
|[Get approvalStage](../api/entitlementmanagement-accesspackageassignmentapproval-stage-get.md) | [approvalStage](approvalstage.md) | Retrieve the properties of an **approvalStage** object in entitlement management. |
|[Update approvalStage](../api/entitlementmanagement-accesspackageassignmentapproval-stage-update.md) | None | Apply approve or deny decision on an **approvalStage** object in entitlement management. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|Indicates whether the stage is assigned to the calling user to review. Read-only.|
|displayName|String|The label provided by the policy creator to identify an approval stage. Read-only.|
|id|String|The identifier of the stage associated with an approval object. Read-only.|
|justification|String|The justification associated with the approval stage decision.|
|reviewResult|String|The result of this approval record. Possible values include: `NotReviewed`, `Approved`, `Denied`.|
|reviewedBy|[userIdentity](useridentity.md) | The identifier of the reviewer. Read-only.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|status|String|The stage status. Possible values: `InProgress`, `Initializing`, `Completed`, `Expired`. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStage",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.approvalStage",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "assignedToMe": "Boolean",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.identity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String"
}
```
