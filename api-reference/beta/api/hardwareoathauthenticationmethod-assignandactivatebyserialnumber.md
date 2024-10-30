---
title: "hardwareOathAuthenticationMethod: assignAndActivateBySerialNumber"
description: "This allows assigning a hardware token and activating it at the same time by hardware token serial number."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# hardwareOathAuthenticationMethod: assignAndActivateBySerialNumber

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathauthenticationmethod-assignandactivatebyserialnumber-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-assignandactivatebyserialnumber-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods/assignAndActivateBySerialNumber
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

