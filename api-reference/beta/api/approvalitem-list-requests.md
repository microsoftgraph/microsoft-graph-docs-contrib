---
title: "List requests"
description: "Get a list of approvalItemRequest objects."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
ms.date: 09/10/2024
---

# List requests

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [approvalItemRequest](../resources/approvalitemrequest.md) objects.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approvalitem_list_requests" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-list-requests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/approval/approvalItems/{approvalItemId}/requests
```

## Optional query parameters

This method supports the `$filter`, `$orderby`, `$count` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [approvalItemRequest](../resources/approvalitemrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_approvalitemrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/d3a7405e-452a-47e0-9c35-9335225ba55d/requests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-approvalitemrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-approvalitemrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-approvalitemrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-approvalitemrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-approvalitemrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-approvalitemrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.approvalItemRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#requests/$entity",
  "value":[
    {
      "id":"9d4c5640-1da7-4739-924f-d10b70c734c1",
      "owner":{
          "user":{
            "id":"39d1a7fb-5f54-4c89-b513-241683718c9b",
            "displayName":"Lilli Allik"
          }
      },
      "createdDateTime":"2022-04-13T00:17:49Z",
      "isReassigned": false
    },
    {
      "id":"9d4c5640-1da7-4739-924f-d10b70c734c2",
      "owner":{
          "group":{
            "id":"f2926053-5479-4bce-ad4c-8394ce51d6c5",
            "displayName":"Rene Magi"
          }
      },
      "createdDateTime":"2022-04-18T00:17:49Z",
      "isReassigned": false
    },
    {
      "id":"8d4c7640-1da7-4739-924f-d10b70c734c2",
      "owner":{
          "user":{
            "id":"f4d6b152-d3c6-4c27-9bc6-1cd5cdcb8473",
            "displayName":"Jana Pihlak"
          }
      },
      "createdDateTime":"2022-04-18T00:17:49Z",
      "isReassigned": true
    }
  ]
}
```

