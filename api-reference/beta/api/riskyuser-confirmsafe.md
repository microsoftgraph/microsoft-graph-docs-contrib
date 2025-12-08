---
title: "riskyUser: confirmSafe"
description: "Confirm one or more riskyUser objects as safe and set their risk level to none."
author: "dimadonhin"
ms.date: 05/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# riskyUser: confirmSafe

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Confirm one or more [riskyUser](../resources/riskyuser.md) objects as safe. This action sets the targeted user's risk level to none.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskyuser_confirmsafe" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskyuser-confirmsafe-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-write](../includes/rbac-for-apis/rbac-identity-protection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /riskyUsers/confirmSafe
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|userIds|String collection|Specify the user IDs to confirm as safe in the request body.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "riskyuserthis.confirmsafe"
}
-->
```http
POST https://graph.microsoft.com/beta/identityProtection/riskyUsers/confirmSafe
Content-Type: application/json

{
  "userIds": [
    "5a0c76d2-cb57-4ece-9bc1-c323178f116a",
    "96609214-09ef-4f80-9d4a-ace5fceecaec",
    "05020696-4eb8-45a3-918f-8f8bb7ad6015"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/riskyuserthisconfirmsafe-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/riskyuserthisconfirmsafe-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/riskyuserthisconfirmsafe-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/riskyuserthisconfirmsafe-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/riskyuserthisconfirmsafe-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/riskyuserthisconfirmsafe-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/riskyuserthisconfirmsafe-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

