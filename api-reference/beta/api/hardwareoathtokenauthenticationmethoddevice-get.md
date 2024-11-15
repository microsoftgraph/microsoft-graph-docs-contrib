---
title: "Get hardwareOathTokenAuthenticationMethodDevice"
description: "Read the properties and relationships of a hardwareOathTokenAuthenticationMethodDevice object."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get hardwareOathTokenAuthenticationMethodDevice

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathtokenauthenticationmethoddevice-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathtokenauthenticationmethoddevice-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}
```

## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_hardwareoathtokenauthenticationmethoddevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.hardwareOathTokenAuthenticationMethodDevice"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice",
    "id": "aad49556-####-####-####-############",
    "displayName": "Amy Masters Token",
    "serialNumber": "TOTP123456",
    "manufacturer": "Contoso",
    "model": "Hardware Token 1000",
    "secretKey": null,
    "timeIntervalInSeconds": 30,
    "status": "activated",
    "assignedTo": {
        "id": "0cadbf92-####-####-####-############",
        "displayName": "Amy Masters"
    },
    "hashFunction": "hmacsha1"
  }
}
```
