---
title: "Delete qrCode"
description: "Delete a qrCode object."
author: "AanjuSingh"
ms.date: 02/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete qrCode

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a standard or temporary [qrCode](../resources/qrcode.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [permissions-table](../includes/permissions/authentication-delete-qrcodepinmethod-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{id}/authentication/qrCodePinMethod/standardQRCode
DELETE /users/{id}/authentication/qrCodePinMethod/temporaryQRCode
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_qrcode"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod/standardQRCode
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

