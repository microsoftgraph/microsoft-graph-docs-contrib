---
title: "Get plannerTask"
description: "Retrieve the properties and relationships of plannerTask object."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get plannerTask

Namespace: microsoft.graph

Retrieve the properties and relationships of [plannerTask](../resources/plannertask.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertask_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertask-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /planner/tasks/{id}
```

## Request headers
| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [plannerTask](../resources/plannertask.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_plannertask",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-plannertask-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-plannertask-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-plannertask-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-plannertask-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-plannertask-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-plannertask-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-plannertask-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-plannertask-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTask"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "createdBy": {
    "user": {
      "id": "6463a5ce-2119-4198-9f2a-628761df4a62"
    }
  },
  "planId": "xqQg5FS2LkCp935s-FIFm2QAFkHM",
  "bucketId": "gcrYAaAkgU2EQUvpkNNXLGQAGTtu",
  "title": "title-value",
  "orderHint": "9223370609546166567W",
  "assigneePriority": "90057581\"",
  "createdDateTime": "2015-03-25T18:36:49.2407981Z",
  "assignments": {
    "fbab97d0-4932-4511-b675-204639209557": {
      "@odata.type": "#microsoft.graph.plannerAssignment",
      "assignedBy": {
        "user": {
          "id": "1e9955d2-6acd-45bf-86d3-b546fdc795eb"
        }
      },
      "assignedDateTime": "2015-03-25T18:38:21.956Z",
      "orderHint": "RWk1"
    }
  },
  "id":"01gzSlKkIUSUl6DF_EilrmQAKDhh",
  "priority": 5
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get plannerTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

