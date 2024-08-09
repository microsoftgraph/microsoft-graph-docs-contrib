---
title: "fido2AuthenticationMethod: creationOptions"
description: "Retrieve creation options required to generate and register an Entra ID compatible passkey."
ms.localizationpriority: medium
author: "tilarso"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# fido2AuthenticationMethod: creationOptions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve creation options required to generate and register a Microsoft Entra ID-compatible passkey. Self-service operations aren't supported.  

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fido2authenticationmethod-creationoptions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fido2authenticationmethod-creationoptions-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/authentication/fido2Methods/creationOptions
```

## Function parameters

The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|challengeTimeoutInMinutes|Int32|Override the timeout of the server-generated challenge returned in the request. The default value is 5 minutes; this value can be overridden to between 5 - 43200 minutes.|  


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [webauthnCredentialCreationOptions](../resources/webauthncredentialcreationoptions.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "fido2authenticationmethodthis.creationoptions"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/authentication/fido2Methods/creationOptions(challengeTimeoutInMinutes=10)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/fido2authenticationmethodthiscreationoptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/fido2authenticationmethodthiscreationoptions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/fido2authenticationmethodthiscreationoptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/fido2authenticationmethodthiscreationoptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.webauthnCredentialCreationOptions"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.webauthnCredentialCreationOptions"
  }
}
```

