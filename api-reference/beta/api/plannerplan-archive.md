---
title: "plannerPlan: archive"
description: "Archive a plan"
author: "dianambb"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: apiPageType
---

# plannerPlan: archive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Archive a [plannerPlan](../resources/plannerplan.md) object. Archiving a plan, also archives the [plannerTasks](../resources/plannertask.md) and [plannerBuckets](../resources/plannerbucket.md) in the plan. 

Only planner plans in a group container can be archived.

An archived entity is read-only. Archived entities cannot be updated.

An archived plan can be [unarchived](plannerplan-unarchive.md). 

All archived entities can be deleted.

Archived tasks are not included in the response for [list of tasks assigned to a user](planneruser-list-tasks.md). 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plannerplan-unarchive-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-archive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /planner/plans/{planId}/archive
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|
| If-Match  | Last known ETag value for the **plannerPlan** to be archived. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|justification|String|Reason why the plan is being archived.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "plannerplanthis.archive"
}
-->
``` http
POST https://graph.microsoft.com/beta/planner/plans/{planId}/archive
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

