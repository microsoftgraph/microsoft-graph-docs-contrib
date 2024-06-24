---
title: "List platformCredentialAuthenticationMethods"
description: "Get a list of the platformCredentialAuthenticationMethod objects and their properties."
author: "Veena11"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List platformCredentialAuthenticationMethods
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) objects and their properties.


[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- { "blockType": "permissions", "name": "platformcredentialauthenticationmethod_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/platformcredentialauthenticationmethod-list-permissions.md)]

### Permissions acting on other users

<!-- { "blockType": "permissions", "name": "platformcredentialauthenticationmethod_list_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/platformcredentialauthenticationmethod-list-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

To retrieve details of your own Platform Credential authentication methods:
<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/platformCredentialMethods
```

To retrieve details of your own or another user's Platform Credential authentication methods:
<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/platformCredentialMethods
```

## Optional query parameters

Not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_platformcredentialauthenticationmethod_2"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/authentication/platformCredentialMethods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-platformcredentialauthenticationmethod-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-platformcredentialauthenticationmethod-2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-platformcredentialauthenticationmethod-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-platformcredentialauthenticationmethod-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-platformcredentialauthenticationmethod-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-platformcredentialauthenticationmethod-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-platformcredentialauthenticationmethod-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-platformcredentialauthenticationmethod-2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.platformCredentialAuthenticationMethod)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1",
      "displayName": "My Macbook Pro",
      "creationDateTime": "2023-09-02T04:16:49Z"
    },
    {
      "id": "J18B378Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJGM1",
      "displayName": "Kim's Macbook Pro",
      "creationDateTime": "2023-09-02T03:36:19Z"
    }
  ]
}
```
