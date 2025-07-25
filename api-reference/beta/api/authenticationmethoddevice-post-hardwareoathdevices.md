---
title: "Create hardwareOathTokenAuthenticationMethodDevice"
description: "Create a new hardwareOathTokenAuthenticationMethodDevice object."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 07/02/2025
---

# Create hardwareOathTokenAuthenticationMethodDevice

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object. This API supports two scenarios:
- Create the new hardware token without assigning to a user. You can then [assign to a user](authentication-post-hardwareoathmethods.md).
- Create and assign a hardware token to a user in the same request. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethoddevice_post_hardwareoathdevices" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethoddevice-post-hardwareoathdevices-permissions.md)]

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
POST /directory/authenticationMethodDevices/hardwareOathDevices
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
|timeIntervalInSeconds|Int32|Refresh interval of the six-digit verification code, in seconds. The possible values are: 30 or 60. Required.|
|hashFunction|hardwareOathTokenHashFunction|Hash function of the hardware token. The possible values are: `hmacsha1` or `hmacsha256`. Default value is: `hmacsha1`. Optional.|
|assignTo|[identity](../resources/identity.md)|User ID if you want to directly assign the token to a user. Optional.|
|displayName|String|Name that can be provided to the Hardware OATH token. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object in the response body.

## Examples

### Example 1: Create a token without user assignment

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_hardwareoathtokenauthenticationmethoddevice_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices
Content-Type: application/json

{
  "displayName": "Token 1",
  "serialNumber": "TOTP123456",
  "manufacturer": "Contoso",
  "model": "Hardware Token 1000",
  "secretKey": "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB",
  "timeIntervalInSeconds": 30,
  "hashFunction": "hmacsha1"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-hardwareoathtokenauthenticationmethoddevice-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-hardwareoathtokenauthenticationmethoddevice-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-hardwareoathtokenauthenticationmethoddevice-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-hardwareoathtokenauthenticationmethoddevice-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-hardwareoathtokenauthenticationmethoddevice-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-hardwareoathtokenauthenticationmethoddevice-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-hardwareoathtokenauthenticationmethoddevice-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice",
  "id": "9b037532-f999-1ed9-13fd-849ffb995e11",
  "displayName": "Token 1",
  "serialNumber": "TOTP123456",
  "manufacturer": "Contoso",
  "model": "Hardware Token 1000",
  "secretKey": null,
  "timeIntervalInSeconds": 30,
  "status": "available",
  "lastUsedDateTime": null,
  "assignedTo": null,
  "hashFunction": "hmacsha1"
}
```

### Example 2: Create a token and assign it to a user

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_hardwareoathtokenauthenticationmethoddevice_from_and_assign"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/authenticationMethodDevices/hardwareOathDevices
Content-Type: application/json

{
  "displayName": "Token 1",
  "serialNumber": "TOTP123456",
  "manufacturer": "Contoso",
  "model": "Hardware Token 1000",
  "secretKey": "6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB",
  "timeIntervalInSeconds": 30,
  "hashFunction": "hmacsha1",
  "assignTo": {
    "id": "0cadbf92-####-####-####-############"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-hardwareoathtokenauthenticationmethoddevice-from-and-assign-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.hardwareOathTokenAuthenticationMethodDevice",
  "id": "9b037532-f999-1ed9-13fd-849ffb995e11",
  "displayName": "Token 1",
  "serialNumber": "TOTP123456",
  "manufacturer": "Contoso",
  "model": "Hardware Token 1000",
  "secretKey": null,
  "timeIntervalInSeconds": 30,
  "status": "assigned",
  "lastUsedDateTime": null,
  "assignedTo": null,
  "hashFunction": "hmacsha1",
  "assignedTo": {
    "id": "0cadbf92-####-####-####-############",
    "displayName": "Amy Masters"
    }
}
```
