---
title: "Get resourceAccountKeyAuthenticationMethod"
description: "Read the properties and relationships of a resourceAccountKeyAuthenticationMethod object."
author: "akgoel"
ms.date: 06/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get resourceAccountKeyAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [resourceAccountKeyAuthenticationMethod](../resources/resourceaccountkeyauthenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "resourceaccountkeyauthenticationmethod-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/resourceaccountkeyauthenticationmethod-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id | userPrincipalName}/authentication/resourceAccountKeyAuthenticationMethods/{resourceAccountKeyAuthenticationMethodId}
```

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [resourceAccountKeyAuthenticationMethod](../resources/resourceaccountkeyauthenticationmethod.md) object in the response body.

If the credential ID doesn't exist, this method returns a `404 Not Found` error code with an error code of `resourceNotFound`.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_resourceaccountkeyauthenticationmethod",
  "sampleKeys": ["0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f", "aB3dE5fG7hI9jK1lM3nO5pQ7rS9tU1vW3xY5zA7bC9d1"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f/authentication/resourceAccountKeyAuthenticationMethods/aB3dE5fG7hI9jK1lM3nO5pQ7rS9tU1vW3xY5zA7bC9d1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-resourceaccountkeyauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-resourceaccountkeyauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-resourceaccountkeyauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-resourceaccountkeyauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-resourceaccountkeyauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-resourceaccountkeyauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.resourceAccountKeyAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f')/authentication/resourceAccountKeyAuthenticationMethods/$entity",
  "@odata.type": "#microsoft.graph.resourceAccountKeyAuthenticationMethod",
  "id": "aB3dE5fG7hI9jK1lM3nO5pQ7rS9tU1vW3xY5zA7bC9d1",
  "displayName": "Conference Room MTR-W",
  "createdDateTime": "2026-05-28T19:55:40Z",
  "isUsable": true,
  "methodUsabilityReason": "EnabledByPolicy",
  "lastUsedDateTime": "2026-06-15T08:30:00Z"
}
```
