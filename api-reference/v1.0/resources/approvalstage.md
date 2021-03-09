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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List approvalStages](../api/approvalstage-list.md)|[approvalStage](../resources/approvalstage.md) collection|Get a list of the [approvalStage](../resources/approvalstage.md) objects and their properties.|
|[Create approvalStage](../api/approvalstage-create.md)|[approvalStage](../resources/approvalstage.md)|Create a new [approvalStage](../resources/approvalstage.md) object.|
|[Get approvalStage](../api/approvalstage-get.md)|[approvalStage](../resources/approvalstage.md)|Read the properties and relationships of an [approvalStage](../resources/approvalstage.md) object.|
|[Update approvalStage](../api/approvalstage-update.md)|[approvalStage](../resources/approvalstage.md)|Update the properties of an [approvalStage](../resources/approvalstage.md) object.|
|[Delete approvalStage](../api/approvalstage-delete.md)|None|Deletes an [approvalStage](../resources/approvalstage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|**TODO: Add Description**|
|displayName|String|A label to identify an approval step. Read-only.|
|id|String|The identifier of the step associated with a specific approval.|
|justification|String|The justification for the approval decision.|
|reviewedBy|[identity](../resources/identity.md)|The details of the reviewer.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. <br>The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|reviewResult|String|The result of the approval record. Possible values are: `NotReviewed`,  `Approved`, or  `Denied.`|
|status|String|**TODO: Add Description**|


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

