---
title: "Get plannerGoal"
description: "Retrieve the properties and relationships of a plannerGoal object."
author: "jadenstetler"
ms.date: 07/21/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get plannerGoal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [plannerGoal](../resources/plannergoal.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannergoal_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannergoal-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /planner/goals/{goal-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [plannerGoal](../resources/plannergoal.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_plannergoal",
  "sampleKeys": ["eDsaMcSvzUqAeS1NkgTFY5UAHYBs"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/planner/goals/eDsaMcSvzUqAeS1NkgTFY5UAHYBs
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-plannergoal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerGoal"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/goals/$entity",
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
}
```
