---
title: "Create temporaryAccessPassMethod"
description: "Create a new temporaryAccessPassAuthenticationMethod object for a user."
author: "tilarso"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create temporaryAccessPassMethod
Namespace: microsoft.graph

Create a new [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object on a user. A user can only have one Temporary Access Pass that's usable within its specified lifetime. If the user requires a new Temporary Access Pass while the current Temporary Access Pass is valid, the admin can create a new Temporary Access Pass for the user, the previous Temporary Access Pass will be deleted, and a new Temporary Access Pass will be created.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on other users

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.ReadWrite.All |

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{id | userPrincipalName}/authentication/temporaryAccessPassMethods
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object.

The following table describes optional properties that can be used when creating the [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md).

|Property|Type|Description|
|:---|:---|:---|
|isUsableOnce|Boolean|Optional. Determines if the pass is limited to a one-time use. If `true`, the pass can be used once; if `false`, the pass can be used multiple times within its **lifetimeInMinutes** setting. A multi-use Temporary Access Pass (`isUsableOnce = false`), can only be created and used for sign-in if it is allowed by the  [Temporary Access Pass authentication method policy](../resources/temporaryaccesspassauthenticationmethodconfiguration.md).|
|lifetimeInMinutes|Int32|Optional. The lifetime of the temporaryAccessPass in minutes starting at creation time or at startDateTime, if set. Must be between 10 and 43200 (equivalent to 30 days). If not specified, the **defaultLifetimeInMinutes** setting in the [Temporary Access Pass authentication method policy](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) is applied. |
|startDateTime|DateTimeOffset|Optional. The date and time when the temporaryAccessPass becomes available to use. If not specified, the Temporary Access Pass is available to use immediately after it's created.| 

## Response

If successful, this method returns a `201 Created` response code and a [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_temporaryaccesspassauthenticationmethod_from_"
}
-->
```http
POST https://graph.microsoft.com/v1.0/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/temporaryAccessPassMethods
Content-Type: application/json

{
    "startDateTime": "2022-06-05T00:00:00.000Z",
    "lifetimeInMinutes": 60,
    "isUsableOnce": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-temporaryaccesspassauthenticationmethod-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-temporaryaccesspassauthenticationmethod-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-temporaryaccesspassauthenticationmethod-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-temporaryaccesspassauthenticationmethod-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-temporaryaccesspassauthenticationmethod-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-temporaryaccesspassauthenticationmethod-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethod",
    "id": "6f1967b7-15e8-4935-ac26-d50770ed07a7",
    "temporaryAccessPass": "+drkzqAD",
    "createdDateTime": "2022-06-02T16:21:09.765173Z",
    "startDateTime": "2022-06-05T00:00:00Z",
    "lifetimeInMinutes": 60,
    "isUsableOnce": false,
    "isUsable": false,
    "methodUsabilityReason": "NotYetValid"
}
```
