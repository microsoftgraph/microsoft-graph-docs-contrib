---
title: "Update qrCodePinAuthenticationMethodConfiguration"
description: "Update the properties of a QR code PIN authentication method policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update qrCodePinAuthenticationMethodConfiguration

Namespace: microsoft.graph

Update the properties of a [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) object, which represents the QR code PIN authentication method policy for the Microsoft Entra tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "qrcodepinauthenticationmethodconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethodconfiguration-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/qrCodePin
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) object with the values of properties that should be updated.

|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|pinLength|Int32|The required length of the PIN. The minimum is 8 digits and maximum is 20 digits.|
|standardQRCodeLifetimeInDays|Int32|The default lifetime of standard QR codes in days. The minimum is 1 day and maximum is 395 days. The default is 365 days.|
|state|authenticationMethodState|The state of the policy. The possible values are: `enabled`, `disabled`.|

>**Note:** The `@odata.type` property with a value of `#microsoft.graph.qrCodePinAuthenticationMethodConfiguration` must be included in the body.

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
```http
PATCH https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/qrCodePin
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "state": "enabled",
  "standardQRCodeLifetimeInDays": 180,
  "pinLength": 10
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethodConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "id": "qrCodePin",
  "state": "enabled",
  "standardQRCodeLifetimeInDays": 180,
  "pinLength": 10,
  "excludeTargets": []
}
```
