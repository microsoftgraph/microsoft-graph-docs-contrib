---
title: "Update authentication signInPreferences"
description: "Update the properties of a user's authentication sign in preferences."
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update authentication signInPreferences
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [signInPreferences](../resources/signInPreferences.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|UserAuthenticationMethod.ReadWrite|
|Delegated (personal Microsoft account)|Not supported.|
|Application|UserAuthenticationMethod.ReadWrite|

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /users/{id | userPrincipalName}/authentication/signInPreferences
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|isSystemPreferredAuthenticationMethodEnabled|Boolean|Indicates whether the credential preferences of the system are enabled.|
|userPreferredMethodForSecondaryAuthentication|userDefaultAuthenticationMethodType|The default second-factor method used by the user when signing in. If a user is enabled for system-preferred authentication, then this value is ignored except for a few scenarios where a user is authenticating via NPS extension or ADFS adapter. Possible values are `push`, `oath`, `voiceMobile`, `voiceAlternateMobile`, `voiceOffice`, `sms`, and `unknownFutureValue`|



## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_authentication"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/users/071cc716-8147-4397-a5ba-b2105951cc0b/authentication/signInPreferences
Content-Type: application/json

{
  "userPreferredMethodForSecondaryAuthentication": "oath"
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```


