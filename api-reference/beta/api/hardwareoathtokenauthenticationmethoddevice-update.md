---
title: "Update hardwareOathTokenAuthenticationMethodDevice"
description: "Update the properties of a hardwareOathTokenAuthenticationMethodDevice object."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update hardwareOathTokenAuthenticationMethodDevice

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object. The token needs to unassigned.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathtokenauthenticationmethoddevice-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathtokenauthenticationmethoddevice-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|manufacturer|String|Manufacturer name of the hardware token. Optional.|
|model|String|Model name of the hardware token. Optional.|
|timeIntervalInSeconds|Int32|Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Optional.|
|hashFunction|hardwareOathTokenHashFunction|Hash function of the hardrware token. The possible values are: `hmacsha1` or `hmacsha256`. Default value is: `hmacsha1`. Optional.|
|displayName|String|Name that can be provided to the Hardware OATH token. Optional.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_hardwareoathtokenauthenticationmethoddevice"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}
Content-Type: application/json

{
  "hashFunction": "hmacsha256"
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
