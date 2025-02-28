---
title: "Create qrCodePinAuthenticationMethod"
description: "Create a new qrCodePinAuthenticationMethod object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create qrCodePinAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new qrCodePinAuthenticationMethod object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authentication-put-qrcodepinmethod-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-put-qrcodepinmethod-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.strongAuthentication.qrCodePinAuthenticationMethod not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object.

You can specify the following properties when creating a **qrCodePinAuthenticationMethod**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [microsoft.strongAuthentication.authenticationMethod](../resources/authenticationmethod.md). Optional.|
|isUsable|Boolean|**TODO: Add Description** Inherited from [microsoft.strongAuthentication.authenticationMethod](../resources/authenticationmethod.md). Optional.|
|methodUsabilityReason|String|**TODO: Add Description** Inherited from [microsoft.strongAuthentication.authenticationMethod](../resources/authenticationmethod.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [qrCodePinAuthenticationMethod](../resources/qrcodepinauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_qrcodepinauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.strongAuthentication.qrCodePinAuthenticationMethod not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "isUsable": "Boolean",
  "methodUsabilityReason": "String"
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethod",
  "id": "da1e549e-ff15-58f8-d365-b228c2b10009",
  "createdDateTime": "String (timestamp)",
  "isUsable": "Boolean",
  "methodUsabilityReason": "String"
}
```

