---
title: "Create one or more hardwareOathTokenAuthenticationMethodDevice"
description: "Create a new hardwareOathTokenAuthenticationMethodDevice object. Supports bulk creation."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 07/02/2024
---

# Create one or more hardwareOathTokenAuthenticationMethodDevice objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create one or more [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) objects. This API supports two scenarios:
- Create the new hardware tokens without assigning to users. You can then [assign to a user](authentication-post-hardwareoathmethods.md).
- Create and assign any individual hardware tokens to users in the same request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethoddevice_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethoddevice-update-permissions.md)]

> [!IMPORTANT]
> When using delegated permissions with work or school accounts, the signed-in user must have an appropriate [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with the necessary permissions. The least privileged built-in role required for this operation is *Authentication Policy Administrator*.
> 
> To create and assign a hardware OATH token to a user in a single request, the signed-in user must also have:
> - The *UserAuthenticationMethod.ReadWrite.All* delegated permission.
> - Either *Authentication Administrator* (least privileged role for assigning hardware tokens to nonadmin users) or *Privileged Authentication Administrator* (least privileged role for assigning hardware tokens to admin users) role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/authenticationMethodDevices/hardwareOathDevices
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object.

You can specify the following properties when creating a **hardwareOathTokenAuthenticationMethodDevice**.

|Property|Type|Description|
|:---|:---|:---|
|serialNumber|String|Serial number of the specific hardware token, often found on the back of the device. Required.|
|manufacturer|String|Manufacturer name of the hardware token. Required.|
|model|String|Model name of the hardware token. Required.|
|secretKey|String|Secret key of the specific hardware token, provided by the vendor. Required.|
|timeIntervalInSeconds|Int32|Refresh interval of the 6-digit verification code, in seconds. The possible values are: 30 or 60. Required.|
|hashFunction|hardwareOathTokenHashFunction|Hash function of the hardrware token. The possible values are: `hmacsha1` or `hmacsha256`. Default value is: `hmacsha1`. Optional.|
|assignTo|[identity](../resources/identity.md)|User ID if you want to directly assign the token to a user. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_bulk_hardwareoathtokenauthenticationmethoddevice_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices
Content-Type: application/json

{
  "@context": "#$delta",
  "value": [
    {
      "@contentId": "1",
      "serialNumber": "TOTP123456",
      "manufacturer": "Contoso",
      "model": "Hardware Token 1000",
      "secretKey": "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB",
      "timeIntervalInSeconds": "30",
      "hashFunction": "hmacsha1"
      },
      {
        "@contentId": "2",
        "serialNumber": "TOTP654321",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": "TXYZAE6PJ4UZF3NNKIW3HQNFUF7WFTFB",
        "timeIntervalInSeconds": "30",
        "hashFunction": "hmacsha1",
        "assignTo": {
          "id": "0cadbf92-####-####-####-############"
          }
      }
   ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-bulk-hardwareoathtokenauthenticationmethoddevice-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "aad49556-####-####-####-############",
      "device": {
        "id": "aad49556-####-####-####-############",
        "displayName": null,
        "serialNumber": "TOTP123456",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "available",
        "hashFunction": "hmacsha1",
        "assignedTo": null
      }
    },
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "3dee0e53-####-####-####-############",
      "device": {
        "id": "3dee0e53-####-####-####-############",
        "displayName": null,
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
