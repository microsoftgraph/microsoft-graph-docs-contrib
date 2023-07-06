---
title: "Get authentication signInPreferences"
description: "Read the properties of a user's authentication sign in preferences."
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get authentication signInPreferences
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [signInPreferences](../resources/signInPreferences.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|UserAuthenticationMethod.Read, UserAuthenticationMethod.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|UserAuthenticationMethod.Read, UserAuthenticationMethod.ReadWrite|

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id | userPrincipalName}/authentication/signInPreferences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [signInPreferences](../resources/signInPreferences.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_authentication"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/signInPreferences
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-authentication-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-authentication-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInPreferences"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "isSystemPreferredAuthenticationMethodEnabled": false,
  "userPreferredMethodForSecondaryAuthentication": "push"
}
```

