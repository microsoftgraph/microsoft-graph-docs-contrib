---
title: "Get approvalItem"
description: "Read the properties and relationships of an approvalItem object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
ms.date: 08/22/2024
---

# Get approvalItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [approvalItem](../resources/approvalitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approvalitem_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalitem-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /solutions/approval/approvalItems/{approvalItemId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description                                                                                               |
| :------------ | :-------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [approvalItem](../resources/approvalitem.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_approvalitem"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/approval/approvalItems/d3a7405e-452a-47e0-9c35-9335225ba55d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approvalitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approvalitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approvalitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approvalitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approvalitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-approvalitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.approvalItem"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/approval/$metadata#approvalItem/$entity",
  "id": "d3a7405e-452a-47e0-9c35-9335225ba55d",
  "state":"completed",
  "viewPoint": {
      "roles": ["Approver"]
  },
  "owner": {
      "user": {
        "displayName": "Lilli Allik",
        "id": "f4d6b152-d3c6-4c27-9bc6-1cd5cdcb8473"
      }
  },
  "approvalType": "basicAwaitAll",
  "displayName":"Title of approval",
  "description":"Details of approval",
  "result":"Approve",
  "allowCancel":true,
  "allowEmailNotification": false,
  "createdDateTime":"2022-04-12T20:51:19Z",
  "completedDateTime":"2022-04-12T20:56:19Z",
  "expirationDate": "2099-04-12T23:59:59Z",
  "dueDate": "2029-04-12T23:59:59Z",
  "responsePrompts":[
      "Approve",
      "Reject"
  ]
}
```
