---
title: "plannerPlan: unarchive"
description: "Unarchive a plan"
author: "dianambb"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: apiPageType
---

# plannerPlan: unarchive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unarchive a [plannerPlan](../resources/plannerplan.md) object. Unarchiving a plan, also unarchives the [plannerTasks](../resources/plannertask.md) and [plannerBuckets](../resources/plannerbucket.md) in the plan. 

Only a plan that is [archived](plannerplan-archive.md) can be unarchived.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plannerplan-unarchive-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-unarchive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/plans/{planId}/unarchive
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|
| If-Match  | Last known ETag value for the **plannerPlan** to be unarchived. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|justification|String|Reason why the plan is being unarchived.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "plannerplanthis.unarchive"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/plans/{planId}/unarchive
Content-Type: application/json

{
  "justification": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

