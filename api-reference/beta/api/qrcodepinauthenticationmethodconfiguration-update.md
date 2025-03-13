---
title: "Update qrCodePinAuthenticationMethodConfiguration"
description: "Update the properties of a qrCodePinAuthenticationMethodConfiguration object."
author: "AanjuSingh, minatoruan"
ms.date: 03/04/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update qrCodePinAuthenticationMethodConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a qrCodePinAuthenticationMethodConfiguration object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "qrcodepinauthenticationmethodconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethodconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|state|authenticationMethodState| QR code state in Entra Authentication Method Policy. Inherited from [microsoft.authMethodPolicy.authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`.|
|excludeTargets|[microsoft.authMethodPolicy.excludeTarget](../resources/excludetarget.md) collection|Excluded user or groups in QR code Entra Authentication Method Policy. Inherited from [microsoft.authMethodPolicy.authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|standardQRCodeLifetimeInDays|Int32|Configured lifetime of standard QR code for all the QR code enabled users. Default is 365 days and maximum allowed lifetime is 395 days.|
|pinLength|Int32|Default and minimum length is 8 digit. Max. allowed is upto 20 digits.|



## Response

If successful, this method returns a `200 OK` response code and an updated [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_qrcodepinauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "standardQRCodeLifetimeInDays": "Integer",
  "pinLength": "Integer"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
