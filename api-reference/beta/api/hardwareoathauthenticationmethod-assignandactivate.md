---
title: "hardwareOathAuthenticationMethod: assignAndActivate"
description: "This allows assigning a hardware token and activating it at the same time."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# hardwareOathAuthenticationMethod: assignAndActivate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This allows assigning a hardware token and activating it at the same time.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathauthenticationmethod-assignandactivate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-assignandactivate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods/assignAndActivate
POST /users/{usersId}/authentication/hardwareOathMethods/assignAndActivate
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
|device|[hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md)|ID of the hardware token that is to be assigned to the user and activated.|
|displayName|String|An optional name that can be provided to the Hardware OATH token.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "hardwareoathauthenticationmethodthis.assignandactivatebyserialnumber"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/assignAndActivate
Content-Type: application/json

{
  "device": {
        "id": "aad49556-####-####-####-############"
    },
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

