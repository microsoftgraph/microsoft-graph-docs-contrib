---
title: "List hardwareOathDevices"
description: "List all hardware OATH tokens in the directory."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# List hardwareOathDevices

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all hardware OATH tokens in the directory.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authenticationmethoddevice-list-hardwareoathdevices-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethoddevice-list-hardwareoathdevices-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/authenticationMethodDevices/hardwareOathDevices
```

## Optional query parameters

This method supports `$select`, `$filter(eq)` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).
Supports $select, $filter (eq), and $top

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) objects in the response body.

## Examples

### Example 1: List all tokens in the inventory

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_hardwareoathtokenauthenticationmethoddevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices
```

#### Response

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "aad49556-####-####-####-############",
      "device": {
        "id": "aad49556-####-####-####-############",
        "displayName": "Amy Masters Token 1",
        "serialNumber": "TOTP123456",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "activated",
        "hashFunction": "hmacsha1",
        "assignedTo": {
            "id": "0cadbf92-####-####-####-############",
            "displayName": "Amy Masters"
        }
      }
    },
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "3dee0e53-####-####-####-############",
      "device": {
        "id": "3dee0e53-####-####-####-############",
        "displayName": "Amy Masters Token 2",
        "serialNumber": "TOTP654321",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "assigned",
        "hashFunction": "hmacsha1",
        "assignedTo": {
            "id": "0cadbf92-####-####-####-############",
            "displayName": "Amy Masters"
        }
      }
    }
  ]
}
```

### Example 2: List all tokens in the inventory, filtered on status.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_hardwareoathtokenauthenticationmethoddevice_filter"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices?$filter=status eq 'activated'
```

#### Response

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "3dee0e53-####-####-####-############",
      "device": {
        "id": "3dee0e53-####-####-####-############",
        "displayName": "Amy Masters Token 2",
        "serialNumber": "TOTP654321",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "assigned",
        "hashFunction": "hmacsha1",
        "assignedTo": {
            "id": "0cadbf92-####-####-####-############",
            "displayName": "Amy Masters"
        }
      }
    }
  ]
}
```

### Example 3: Find a specific token by serial number

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_hardwareoathtokenauthenticationmethoddevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices?$filter=serialNumber eq 'TOTP123456'
```

#### Response

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "aad49556-####-####-####-############",
      "device": {
        "id": "aad49556-####-####-####-############",
        "displayName": "Amy Masters Token 1",
        "serialNumber": "TOTP123456",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "activated",
        "hashFunction": "hmacsha1",
        "assignedTo": {
            "id": "0cadbf92-####-####-####-############",
            "displayName": "Amy Masters"
        }
      }
    }
  ]
}
```
