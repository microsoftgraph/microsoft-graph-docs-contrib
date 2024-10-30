---
title: "hardwareOathAuthenticationMethod: activate"
description: "Activate a Hardware OATH token that is already assigned to a user."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# hardwareOathAuthenticationMethod: activate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathauthenticationmethod-activate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-activate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/activate
POST /users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/activate
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
|displayName|String|An optional name that can be provided to the Hardware OATH token.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "hardwareoathauthenticationmethodthis.activate"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/activate
Content-Type: application/json

{
  "verificationCode": "588651",
  "displayName": "Amy Masters Token"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

