---
title: "approvalStage resource type"
description: "Stages in an approval."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# approvalStage resource type

Namespace: microsoft.graph

Stages in the approval indicating the result, reviewer, and the date of approval.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|If the userConsentRequest is assigned to you.|
|displayName|String|A label to identify an approval step. Read-only.|
|id|String|The identifier of the step associated with a specific approval.|
|justification|String|The justification for the approval decision.|
|reviewedBy|[identity](../resources/identity.md)|The details of the reviewer.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. <br>The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|reviewResult|String|The result of the approval record. Possible values are: `NotReviewed`,  `Approved`, or  `Denied.`|
|status|String|Status of the approval stage. Possible values are: `Completed`.|


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

