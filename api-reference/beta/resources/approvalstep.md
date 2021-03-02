---
title: "approvalStep resource type"
description: "Steps associated with an approval."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the approval steps indicating the result, reviewer, and the date of approval.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A label to identify an approval step. Read-only.|
|id|String|The identifier of the step associated with a specific approval.|
|justification|String|The justification for the approval decision.|
|reviewedBy|[identity](../resources/identity.md)|The details of the reviewer.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. <br>The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `'2014-01-01T00:00:00Z'`.|
|reviewResult|String|The result of the approval record. Possible values are: `NotReviewed`,  `Approved`, or  `Denied.`|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStep",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalStep",
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

