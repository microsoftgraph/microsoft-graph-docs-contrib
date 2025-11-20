---
title: "Get qrCodePinAuthenticationMethod"
description: "Read the properties and relationships of a qrCodePinAuthenticationMethod object."
author: "AanjuSingh"
ms.date: 04/16/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get qrCodePinAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a user's [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "qrcodepinauthenticationmethod_get", 
  "requestUrls": ["GET /users/{id}/authentication/qrCodePinMethod"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Retrieve your own QR Code + PIN authentication method.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /me/authentication/qrCodePinMethod
```

Retrieve another user's QR Code + PIN authentication method.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/authentication/qrCodePinMethod
```

## Optional query parameters

This method does not support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object in the response body. If the user hasn't registered a QR Code authentication method, the request returns a `404 Not Found` error code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_qrcodepinauthenticationmethod"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-qrcodepinauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-qrcodepinauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-qrcodepinauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-qrcodepinauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-qrcodepinauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-qrcodepinauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-qrcodepinauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethod"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "d29518d4-b99a-4c88-b40c-92fd12959724",
    "lastUsedDateTime": "2022-11-06T23:16:12Z",
    "standardQRCode": {
        "id": "1a253da5-3f9a-457d-bd9c-de1aab9a2e59",
        "expireDateTime": "2025-12-19T12:00:00Z",
        "startDateTime": "2025-01-01T12:00:00Z",
        "createdDateTime": "2025-03-05T00:03:11.1460378Z",
        "lastUsedDateTime": "0001-01-01T00:00:00Z",
        "image": null
    },
    "temporaryQRCode": null,
    "pin": {
        "id": "a98a1084-f503-4dfd-a293-c0e93cba124a",
        "code": "",
        "forceChangePinNextSignIn": true,
        "createdDateTime": "2025-03-05T00:03:11.3120627Z",
        "updatedDateTime": "2025-03-05T00:03:11.3120627Z"
    }
}
```

