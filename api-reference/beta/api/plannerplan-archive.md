---
title: "plannerPlan: archive"
description: "Archive a plan"
author: "dianambb"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 07/16/2024
---

# plannerPlan: archive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Archive a [plannerPlan](../resources/plannerplan.md) object. Archiving a plan, also archives the [plannerTasks](../resources/plannertask.md) and [plannerBuckets](../resources/plannerbucket.md) in the plan. 

An archived entity is read-only. Archived entities cannot be updated.

An archived plan can be [unarchived](plannerplan-unarchive.md). 

All archived entities can be deleted.

Archived tasks are not included in the response for [list of tasks assigned to a user](planneruser-list-tasks.md). 

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplan_archive" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-archive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
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

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400 and 403 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannerplanthis.archive"
}
-->
```http
POST https://graph.microsoft.com/beta/planner/plans/{planId}/archive
Content-Type: application/json

{
  "justification": "String"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannerplanthisarchive-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannerplanthisarchive-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannerplanthisarchive-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannerplanthisarchive-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannerplanthisarchive-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/plannerplanthisarchive-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/plannerplanthisarchive-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

