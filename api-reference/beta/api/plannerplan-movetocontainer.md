---
title: "plannerPlan: moveToContainer"
description: "Move a planner plan object from one planner plan container to another."
ms.localizationpriority: medium
author: "vasrinwork"
ms.subservice: "planner"
doc_type: apiPageType
---

# plannerPlan: moveToContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Move a [planner plan](../resources/plannerplan.md) object from one [planner plan container](../resources/plannerplancontainer.md) to another. Planner plans can only be moved from a user container to a group container.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplan_movetocontainer" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-movetocontainer-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /planner/plans/{planId}/moveToContainer
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
| If-Match  | Last known ETag value for the **plannerPlan** to be moved. Required.|

## Request body
In the request body, supply a JSON representation of the [plannerPlanContainer](../resources/plannerplancontainer.md) object.

## Response

If successful, this API returns a `200 OK` response code and a [plannerPlan](../resources/plannerplan.md) object in the response body.

## Example
### Request
The following example shows a request to move a plan from a user container to a group container.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannerplan_move_to_container_"
}-->
```http
POST https://graph.microsoft.com/beta/planner/plans/{planId}/moveToContainer
Content-type: application/json
If-Match: "string"

{
    "container": {
        "containerId": "groupId",
        "type": "group"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannerplan-move-to-container--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/plannerplan-move-to-container--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannerplan-move-to-container--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannerplan-move-to-container--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannerplan-move-to-container--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannerplan-move-to-container--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/plannerplan-move-to-container--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/plannerplan-move-to-container--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows a response to a request to move a plan from a user container to a group container.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerPlan"
}-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#plans/$entity",
    "@odata.etag": "W/\"JzEtUGxhbiAgQEBAQEBAQEBAQEBAQEBARCc=\"",
    "title": "The Plan",
    "id": "planId",
    "container": {
        "containerId": "groupId",
        "type": "group",
        "url": "https://graph.microsoft.com/beta/groups/groupId"

    }
}
```
