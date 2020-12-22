---
title: "approvalStep resource type"
description: "**TODO: Add Description**"
author: "Zawad"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the case of multi-step approvals, it's important to distinguish between decisions for different steps. The **approvalStep** allows approvers to record decisions per step. Every step is identified by a **displayName** which provides a user friendly name for the step. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A label provided by the policy creator to identify an approval step. Read-only. |
|id|String|The identifier of the step associated with a specific approval. |
|justification|String|The approval decision justification. |
|reviewedBy|[userIdentity](../resources/useridentity.md)|The details of the reviewer. |
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. <br>The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|reviewResult|String|The result of the approval record. Possible values are: `NotReviewed`,  `Approved`, or  `Denied.` |

## Relationships
None.

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
  "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String"
}
```

