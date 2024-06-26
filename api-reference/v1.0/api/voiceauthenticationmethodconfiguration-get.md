---
title: "Get voiceAuthenticationMethodConfiguration"
description: "Read the properties and relationships of a voiceAuthenticationMethodConfiguration object."
author: "luc-msft"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get voiceAuthenticationMethodConfiguration
Namespace: microsoft.graph

Read the properties and relationships of a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "voiceauthenticationmethodconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/voiceauthenticationmethodconfiguration-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/voice
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [voiceAuthenticationMethodConfiguration](../resources/voiceauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_voiceauthenticationmethodconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/voice
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-voiceauthenticationmethodconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-voiceauthenticationmethodconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-voiceauthenticationmethodconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-voiceauthenticationmethodconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-voiceauthenticationmethodconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-voiceauthenticationmethodconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-voiceauthenticationmethodconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-voiceauthenticationmethodconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.voiceAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
    "id": "Voice",
    "state": "enabled",
    "includeTargets": [
      {
          "targetType": "group",
          "id": "all_users",
          "isRegistrationRequired": false
      }
    ],
    "excludeTargets": [],
    "isOfficePhoneAllowed": "true"
  }
}
```

