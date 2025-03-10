---
title: "Get qrCodePinAuthenticationMethod"
description: "Read the properties and relationships of a qrCodePinAuthenticationMethod object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/24/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get qrCodePinAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a user's single [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md)  object.

[!INCLUDE [national-cloud-support](../../includes/global-public.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on self
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|UserAuthenticationMethod.Read|UserAuthenticationMethod.ReadWrite, UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Not supported.|Not supported.|

### Permissions acting on other users
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|UserAuthenticationMethod.Read.All|UserAuthenticationMethod.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|UserAuthenticationMethod.Read.All|UserAuthenticationMethod.ReadWrite.All|

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
  "value": {
    "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
    "id": "da1e549e-ff15-58f8-d365-b228c2b10009",
     "standardQRCode": {
    "@odata.type": "microsoft.graph.qrCode"
     },
    "temporaryQRCode": {
    "@odata.type": "microsoft.graph.qrCode"
    },
    "pin": {
    "@odata.type": "microsoft.graph.qrPin"
    }
  }
}
```

