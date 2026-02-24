---
title: "Get qrCodePinAuthenticationMethodConfiguration"
description: "Read the properties of a QR code PIN authentication method policy."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get qrCodePinAuthenticationMethodConfiguration

Namespace: microsoft.graph

Read the properties and relationships of a [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) object, which represents the QR code PIN authentication method policy for the Microsoft Entra tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "qrcodepinauthenticationmethodconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethodconfiguration-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/qrCodePin
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

If successful, this method returns a `200 OK` response code and a [qrCodePinAuthenticationMethodConfiguration](../resources/qrcodepinauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_qrcodepinauthenticationmethodconfiguration"
}
-->
```http
GET https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/qrCodePin
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
  "standardQRCodeLifetimeInDays": 365,
  "pinLength": 8,
  "excludeTargets": [],
  "includeTargets@odata.context": "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('qrCodePin')/microsoft.graph.qrCodePinAuthenticationMethodConfiguration/includeTargets",
  "includeTargets": [
    {
      "targetType": "group",
      "id": "all_users",
      "isRegistrationRequired": false
    }
  ]
}
```
