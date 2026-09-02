---
title: "List goals"
description: "Retrieve the goals associated with a plannerPlan object."
author: "jadenstetler"
ms.date: 07/21/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List goals

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the [plannerGoal](../resources/plannergoal.md) objects associated with a [plannerPlan](../resources/plannerplan.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannerplan_list_goals" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannerplan-list-goals-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /planner/plans/{plan-id}/goals
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerGoal](../resources/plannergoal.md) objects in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannerplan_get_goals",
  "sampleKeys": ["V5pBRwb_vEugGKGpZuLnX5UAG9iy"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/planner/plans/V5pBRwb_vEugGKGpZuLnX5UAG9iy/goals
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannerplan-get-goals-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannerplan-get-goals-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannerplan-get-goals-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannerplan-get-goals-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannerplan-get-goals-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/plannerplan-get-goals-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.plannerGoal)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.plannerGoal)",
  "value": [
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBATCc=\"",
      "id": "eDsaMcSvzUqAeS1NkgTFY5UAHYBs",
      "planId": "V5pBRwb_vEugGKGpZuLnX5UAG9iy",
      "displayName": "Complete Project X",
      "priority": 1,
      "startDate": null,
      "finishDate": null,
      "notes": {
        "contentType": "html",
        "content": "This goal covers all tasks related to Project X."
      },
      "status": "onTrack"
    },
    {
      "@odata.etag": "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBBTCc=\"",
      "id": "kSjJdsWtY0eLmNpQrStUvY5UAG7cd",
      "planId": "V5pBRwb_vEugGKGpZuLnX5UAG9iy",
      "displayName": "Launch marketing campaign",
      "priority": 3,
      "startDate": null,
      "finishDate": null,
      "notes": null,
      "status": "atRisk"
    }
  ]
}
```
