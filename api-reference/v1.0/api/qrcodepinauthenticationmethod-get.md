---
title: "Get qrCodePinAuthenticationMethod"
description: "Read the properties of a user's QR code PIN authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get qrCodePinAuthenticationMethod

Namespace: microsoft.graph

Read the properties of a user's [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object. This returns the QR code PIN authentication method registered to the user.

> [!NOTE]
> The PIN code is only returned at creation or reset time. For GET operations, the **code** property in the **pin** object returns `null`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "qrcodepinauthenticationmethod_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | userPrincipalName}/authentication/qrCodePinMethod
```

## Optional query parameters

This method doesn't support optional query parameters to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_qrcodepinauthenticationmethod"
}
-->
```http
GET https://graph.microsoft.com/v1.0/users/7c4999ca-a540-47ab-9ab9-8c362f5bf0fe/authentication/qrCodePinMethod
```

### Response

The following example shows the response.

>**Note:** The **image** property in the QR code objects returns `null` for GET operations because the QR code private key isn't stored on the server.

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
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "id": "6C2F8B36-B6F0-46FA-9548-1EBA48BEBBDE",
  "createdDateTime": "2026-01-27T12:00:00Z",
  "standardQRCode": {
    "id": "6C2F8B36-B6F0-46FA-9548-1EBA48BEBBDE",
    "image": null,
    "startDateTime": "2026-01-27T12:00:00Z",
    "expireDateTime": "2027-01-27T12:00:00Z",
    "createdDateTime": "2026-01-27T12:00:00Z",
    "lastUsedDateTime": "2026-01-30T08:15:00Z"
  },
  "temporaryQRCode": {
    "id": "8DF9D1B6-B4BD-4EF8-8E90-2CC63C549C80",
    "image": null,
    "startDateTime": "2026-01-30T08:00:00Z",
    "expireDateTime": "2026-01-30T18:00:00Z",
    "createdDateTime": "2026-01-30T08:00:00Z",
    "lastUsedDateTime": "2026-01-30T08:15:00Z"
  },
  "pin": {
    "code": null,
    "forceChangePinNextSignIn": false,
    "createdDateTime": "2026-01-27T12:00:00Z",
    "updatedDateTime": "2026-01-28T09:30:00Z"
  }
}
```
