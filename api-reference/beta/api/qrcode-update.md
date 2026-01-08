---
title: "Create or Update qrCode"
description: "Update the properties of a qrCode object."
author: "AanjuSingh"
ms.date: 04/16/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create or Update QR code

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a standard or temporary QR code, if there is no active QR code, or update a standard QR code. Only the **expireDateTime** property can be updated for a standard QR code.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { 
  "blockType": "permissions", 
  "name": "qrcode_update", 
  "requestUrls": ["PATCH /users/{id}/authentication/qrCodePinMethod/standardQRCode", "PATCH /users/{id}/authentication/qrCodePinMethod/standardQRCode"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcode-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Update your own QR Code.

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

<!-- { "blockType": "ignored" } -->
```http
PATCH /me/authentication/qrCodePinMethod/standardQRCode
PATCH /me/authentication/qrCodePinMethod/temporaryQRCode
```

Update another user's QR Code.

[!INCLUDE [authentication-methods-apis-users-selfservice](../includes/authentication-methods-apis-users-selfservice.md)]

<!-- { "blockType": "ignored" } -->
```http
PATCH /users/{id}/authentication/qrCodePinMethod/standardQRCode
PATCH /users/{id}/authentication/qrCodePinMethod/temporaryQRCode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the QR code becomes available to use.|
|expireDateTime|DateTimeOffset| The QR code expires and becomes unusable based on this property's value. This property can be modified for a standard QR code up to the maximum lifetime of 395 days from the **startDateTime** value. This property can't be modified for a temporary QR code. |

## Response

If successful, this method returns a `201 Created` response code and an updated [qrCode](../resources/qrcode.md) object in the response body. The QR code image is returned only when creating a QR code object. It's not returned when updating a standard QR code object.

## Examples to create a standard QR code

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_qrcode_from_",
  "@odata.type": "microsoft.graph.qrCode"
}
-->
```http
PATCH https://graph.microsoft.com/beta/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "2025-12-19T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-qrcode-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-qrcode-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-qrcode-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-qrcode-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-qrcode-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-qrcode-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-qrcode-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCode"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "44f2f040-ea9d-4283-9e7b-b63ddae391a9",
  "expireDateTime": "2025-12-19T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
  "createdDateTime": "2025-03-04T21:27:46.9771036Z",
  "lastUsedDateTime": "0001-01-01T00:00:00Z",
  "image": {
    "@odata.type": "#microsoft.graph.qrCodeImageDetails",
    "binaryValue": "SGVsbG9Xb3JsZCE=",
    "version": 1,
    "errorCorrectionLevel": "l",
    "rawContent": "SGVsbG9Xb3JsZCEyTXlSYXdDb250ZW50"
  }
}
```

## Examples to update a standard QR code

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_qrcode",
  "@odata.type": "microsoft.graph.qrCode"
}
-->
```http
PATCH https://graph.microsoft.com/beta/me/authentication/qrCodePinMethod/standardQRCode
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "expireDateTime": "2025-12-01T12:00:00Z",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-qrcode-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-qrcode-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-qrcode-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-qrcode-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-qrcode-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-qrcode-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-qrcode-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCode"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCode",
  "id": "44f2f040-ea9d-4283-9e7b-b63ddae391a9",
  "expireDateTime": "2025-12-01T12:00:00Z",
  "startDateTime": "2025-01-01T12:00:00Z",
  "createdDateTime": "2025-03-04T21:27:46.9771036Z",
  "lastUsedDateTime": "0001-01-01T00:00:00Z",
  "image": null
}
```
