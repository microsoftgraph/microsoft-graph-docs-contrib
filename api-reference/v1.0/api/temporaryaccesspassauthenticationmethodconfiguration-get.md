---
title: "Get temporaryAccessPassAuthenticationMethodConfiguration"
description: "Read the details of the Temporary Access Pass policy for the Azure AD tenant, represented by a temporaryAccessPassAuthenticationMethodConfiguration object."
author: "tilarso"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get temporaryAccessPassAuthenticationMethodConfiguration
Namespace: microsoft.graph

Read the details of the Temporary Access Pass policy for the Azure Active Directory (Azure AD) tenant, represented by a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.AuthenticationMethod|

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_temporaryaccesspassauthenticationmethodconfiguration"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-temporaryaccesspassauthenticationmethodconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-temporaryaccesspassauthenticationmethodconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-temporaryaccesspassauthenticationmethodconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-temporaryaccesspassauthenticationmethodconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-temporaryaccesspassauthenticationmethodconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-temporaryaccesspassauthenticationmethodconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#authenticationMethodConfigurations/$entity",
    "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
    "id": "TemporaryAccessPass",
    "state": "enabled",
    "defaultLifetimeInMinutes": 60,
    "defaultLength": 8,
    "minimumLifetimeInMinutes": 60,
    "maximumLifetimeInMinutes": 480,
    "isUsableOnce": false,
    "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration/includeTargets",
    "includeTargets": [
        {
            "targetType": "group",
            "id": "all_users",
            "isRegistrationRequired": false
        }
    ],
    "excludeTargets": []
}
```
