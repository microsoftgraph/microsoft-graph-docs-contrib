---
title: "Get platformCredentialAuthenticationMethod"
description: "Read the properties and relationships of a platformCredentialAuthenticationMethod object."
author: "ploegert"
ms.date: 07/31/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get platformCredentialAuthenticationMethod

Namespace: microsoft.graph

Read the properties and relationships of a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "platformcredentialauthenticationmethod_get", 
  "requestUrls": ["GET /me/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/platformcredentialauthenticationmethod-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Read details of your own Platform Credential authentication method.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /me/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

Read details of your own or another user's Platform Credential authentication method.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

## Optional query parameters

This method supports the `$expand` query parameter to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

To read the **device** navigation property for another user, specify it in an `$expand` query as follows: `/users/{id}/authentication/platformCredentialMethods/{id}?$expand=device`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object in the response body.

## Examples
> This method supports the `$expand` query parameter to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_platformcredentialauthenticationmethod_1",
  "sampleKeys": ["R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/authentication/platformCredentialMethods/R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-platformcredentialauthenticationmethod-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-platformcredentialauthenticationmethod-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-platformcredentialauthenticationmethod-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-platformcredentialauthenticationmethod-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-platformcredentialauthenticationmethod-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-platformcredentialauthenticationmethod-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-platformcredentialauthenticationmethod-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.  

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.platformCredentialAuthenticationMethod"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": 
    {
      "@odata.type": "#microsoft.graph.platformCredentialAuthenticationMethod",
      "id": "R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1",
      "displayName": "My Macbook Pro",
      "creationDateTime": "2023-09-02T04:16:49Z",
      "keyStrength": "normal",
      "platform": "macOS"
    }
}
```

