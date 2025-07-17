---
title: "hardwareOathAuthenticationMethod: assignAndActivateBySerialNumber"
description: "Assign and activate a hardware token at the same time by hardware token serial number."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# hardwareOathAuthenticationMethod: assignAndActivateBySerialNumber

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign and activate a [hardware token](../resources/hardwareoathauthenticationmethod.md) at the same time by hardware token serial number.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## Permissions acting on self
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-assignandactivatebyserialnumber-permissions.md)]

## Permissions acting on another user
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-assignandactivatebyserialnumber-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Assign and activate a hardware OATH authentication method for yourself by using the device serial number.
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods/assignAndActivateBySerialNumber
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Assign and activate a hardware OATH authentication method for another user by using the device serial number.
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/authentication/hardwareOathMethods/assignAndActivateBySerialNumber
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|verificationCode|String|The 6-digit TOTP code that refreshes every 30 or 60 seconds on the Hardware OATH token.|
|serialNumber|String|Serial number of the Hardware OATH token, often found on the back of the token.|
|displayName|String|An optional name that can be provided to the Hardware OATH token.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "hardwareoathauthenticationmethodthis.assignandactivatebyserialnumber"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/assignAndActivateBySerialNumber
Content-Type: application/json

{
  "verificationCode": "588651",
  "serialNumber": "TOTP123456",
  "displayName": "Amy Masters Token"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/hardwareoathauthenticationmethodthisassignandactivatebyserialnumber-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

