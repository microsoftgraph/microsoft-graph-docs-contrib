---
title: "Get fido2AuthenticationMethod"
description: "Read the properties and relationships of a fido2AuthenticationMethod object."
author: "calvinlui"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get fido2AuthenticationMethod
Namespace: microsoft.graph

Retrieve a user's single [FIDO2 Security Key Authentication Method](../resources/fido2authenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- { "blockType": "permissions", "name": "fido2authenticationmethod_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-get-permissions.md)]

### Permissions acting on other users

<!-- { "blockType": "permissions", "name": "fido2authenticationmethod_get_2" } -->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-get-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Get details of your own FIDO2 authentication method.
<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/fido2Methods/{id}
```

Get details of your own or another user's FIDO2 authentication method.
<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/fido2Methods/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_fido2authenticationmethod_1",
  "sampleKeys": ["-2_GRUg2-HYz6_1YG4YRAQ2"]
}
-->

``` http
GET https://graph.microsoft.com/v1.0/me/authentication/fido2Methods/-2_GRUg2-HYz6_1YG4YRAQ2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-fido2authenticationmethod-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-fido2authenticationmethod-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-fido2authenticationmethod-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-fido2authenticationmethod-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-fido2authenticationmethod-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-fido2authenticationmethod-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-fido2authenticationmethod-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-fido2authenticationmethod-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fido2AuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": {
      "id": "-2_GRUg2-HYz6_1YG4YRAQ2",
      "displayName": "Red key",
      "creationDateTime": "2020-08-10T06:44:09Z",
      "aaGuid": "2fc0579f-8113-47ea-b116-555a8db9202a",
      "model": "NFC key",
      "attestationCertificates": [
          "dbe793efdf1945e2df25d93653a1e8a3268a9075"
      ],
      "attestationLevel": "attested"
  }
}
```

