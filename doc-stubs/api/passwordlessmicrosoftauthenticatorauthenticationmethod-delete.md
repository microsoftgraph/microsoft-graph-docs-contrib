---
title: "Delete passwordlessMicrosoftAuthenticatorAuthenticationMethod"
description: "Deletes a passwordlessMicrosoftAuthenticatorAuthenticationMethod object."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Delete passwordlessMicrosoftAuthenticatorAuthenticationMethod
Namespace: microsoft.graph

Deletes a [passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions acting on self (from most to least privileged)|Permissions acting on others (from least to most privileged)|
|:---|:---|:--|
|Delegated (work or school account)|Not supported.|UserAuthenticationMethod.ReadWrite.All, UserAuthenticationMethod.ReadWrite.All
|Delegated (personal Microsoft account)|Not supported.|Not supported.
|Application|Not Supported.|Not supported.

For delegated scenarios where an admin is acting on another user, the admin needs [one of the following roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

* Global admin
* Global reader
* Privileged authentication admin
* Authentication admin

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /user/authentication/passwordlessMicrosoftAuthenticatorMethods/{passwordlessMicrosoftAuthenticatorAuthenticationMethodId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_passwordlessmicrosoftauthenticatorauthenticationmethod"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/user/authentication/passwordlessMicrosoftAuthenticatorMethods/{passwordlessMicrosoftAuthenticatorAuthenticationMethodId}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

