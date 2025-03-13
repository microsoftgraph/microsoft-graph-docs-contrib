---
title: "Get qrCodePinAuthenticationMethod"
description: "Read the properties and relationships of a qrCodePinAuthenticationMethod object."
author: "AanjuSingh"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get qrCodePinAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a user's single [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

[!INCLUDE [rbac-authentication-methods-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-apis-read.md)]

<!-- {
  "blockType": "permissions",
  "name": "qrcodepinauthenticationmethod-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id}/authentication/qrcodepinmethod
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
``` http
GET /users/{id}/authentication/qrcodepinmethod
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "d29518d4-b99a-4c88-b40c-92fd12959724",
    "isUsable": false,
    "methodUsabilityReason": null,
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

