---
title: "Create approvalItem"
description: "Create a new approvalItem object."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Create approvalItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [approvalItem](../resources/approvalitem.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "approvalsolution_post_approvalitems" } -->
[!INCLUDE [permissions-table](../includes/permissions/approvalsolution-post-approvalitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/approval/approvalItems
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [approvalItem](../resources/approvalitem.md) object.

You can specify the following properties when creating an **approvalItem**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The displayName of the approval request. Required.|
|description|String|The description of the approval request. Optional.|
|allowEmailNotification|Boolean|Indicates whether email notification is enabled. Optional.|
|approvalType|approvalItemType|The workflow type of the approval item. The possible values are: `basic`, `basicAwaitAll`, `custom`, `customAwaitAll`. Required.|
|responsePrompts|String collection|Approval response prompts. Only provide a value for this property when creating a custom approval item. For custom approval items, supply two response prompt strings. The default response prompts are "Approve" and "Reject". Optional.|
|approvers|[approvalIdentitySet](../resources/approvalidentityset.md) collection|The identity of the principals to whom the approval item was initially assigned. Required.|
|owner|[approvalIdentitySet](../resources/approvalidentityset.md)|The identity set of the principal who owns the approval item. Only provide a value for this property when creating an approval item on behalf of the principal. If the owner field isn't provided, the user information from the user context is used. Optional.|

## Response

If successful, this method returns a `202 Accepted` response code with the operation location in the header.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_approvalitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/approval/approvalItems
Content-Type: application/json

{
  "approvers":[
    {
      "user": {
        "id": "39d1a7fb-5f54-4c89-b513-241683718c9b",
        "displayName": "Jana Pihlak"
      }
    },
    {
      "group": {
        "id": "f2926053-5479-4bce-ad4c-8394ce51d6c5"
      }
    }
  ],
  "displayName":"Title of approval",
  "description":"Details of approval",
  "approvalType": "basic",
  "allowEmailNotification": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-approvalitem-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-approvalitem-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-approvalitem-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-approvalitem-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-approvalitem-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-approvalitem-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/solutions/approval/operations/1a837203-b794-4cea-8def-47a7d1f89335
```
