---
title: "Update qrCodePinAuthenticationMethodConfiguration"
description: "Update the properties of a qrCodePinAuthenticationMethodConfiguration object."
author: "AanjuSingh"
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

<!-- { "blockType": "permissions", "name": "qrcodepinauthenticationmethodconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethodconfiguration-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin
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
|state|authenticationMethodState| Whether the policy is enabled or disabled. Inherited from [microsoft.authMethodPolicy.authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`.|
|excludeTargets|[microsoft.graph.excludeTarget](../resources/excludetarget.md) collection|Users or groups excluded from using the QR code authentication method by policy. Inherited from [microsoft.authMethodPolicy.authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|standardQRCodeLifetimeInDays|Int32|Configured lifetime of standard QR code for all enabled users. Default is 365 days and maximum allowed lifetime is 395 days.|
|pinLength|Int32|Default and minimum length is 8 digit. Max. allowed is up to 20 digits.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_qrcodepinauthenticationmethodconfiguration",
  "@odata.type": "microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
}
-->
```http
PATCH https://graph.microsoft.com/beta/policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrCodePinAuthenticationMethodConfiguration",
  "state": "enabled",
  "standardQRCodeLifetimeInDays": 365,
  "pinLength": 8
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-qrcodepinauthenticationmethodconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-qrcodepinauthenticationmethodconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-qrcodepinauthenticationmethodconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-qrcodepinauthenticationmethodconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-qrcodepinauthenticationmethodconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-qrcodepinauthenticationmethodconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-qrcodepinauthenticationmethodconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
