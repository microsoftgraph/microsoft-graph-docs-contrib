---
title: "user: convertExternalToInternalMemberUser"
description: "Convert an external user to an internal member."
author: "yyuank"
ms.reviewer: "iamut"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
---

# user: convertExternalToInternalMemberUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Convert an externally authenticated user into an internal user. The user is able to sign into the host tenant as an internal user and access resources as a member. For more information about this conversion, see [Convert external users to internal users](/entra/identity/users/convert-external-users-internal).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_convertexternaltointernalmemberuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-convertexternaltointernalmemberuser-permissions.md)]

In delegated scenarios, the calling user must have at least the *User Administrator* [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/convertExternalToInternalMemberUser
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|mail|String|Optional. |
|passwordProfile|[passwordProfile](../resources/passwordprofile.md)|Required for users whose authentication is managed in the cloud.|
|userPrincipalName|String|Required for cloud users to change the **userPrincipalName**. Not required for on-premises synced users, as their **userPrincipalName** is managed on-premises.|


## Response

If successful, this method returns a `200 OK` response code and [conversionUserDetails](../resources/conversionUserDetails.md) response object.

## Examples

### Example 1: Convert a cloud user and require them to reset their password on next sign in

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-cloudonly"
}
-->
```http
POST https://graph.microsoft.com/beta/users/0b8cc234-ef87-4015-9785-cbb42000d41c/convertExternalToInternalMemberUser
Content-type: application/json

{
    "userPrincipalName": "AdeleVance@contoso.com",
    "passwordProfile": {
        "password": "Zdi087#2jhkahf",
        "forceChangePasswordNextSignIn": "true"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userthisconvertexternaltointernalmemberuser-cloudonly-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/userthisconvertexternaltointernalmemberuser-cloudonly-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userthisconvertexternaltointernalmemberuser-cloudonly-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userthisconvertexternaltointernalmemberuser-cloudonly-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userthisconvertexternaltointernalmemberuser-cloudonly-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userthisconvertexternaltointernalmemberuser-cloudonly-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/userthisconvertexternaltointernalmemberuser-cloudonly-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userthisconvertexternaltointernalmemberuser-cloudonly-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversionUserDetails"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.conversionUserDetails",
    "displayName": "Adele Vance",
    "userPrincipalName": "AdeleVance@contoso.com",
    "convertedToInternalUserDateTime": "2024-02-05T20:16:37.5012924Z",
    "mail": "AdeleV@woodgrove.com"
}
```

### Example 2: Convert a cloud user, change their mail address, and require password reset on next sign in

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-cloudonly-with-mail"
}
-->
```http
POST https://graph.microsoft.com/beta/users/0b8cc234-ef87-4015-9785-cbb42000d41c/convertExternalToInternalMemberUser
Content-type: application/json

{
    "userPrincipalName": "AdeleVance@contoso.com",
    "passwordProfile": {
        "password": "Zdi087#2jhkahf",
        "forceChangePasswordNextSignIn": "true"
    },
    "mail": "AdeleV@contoso.com"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userthisconvertexternaltointernalmemberuser-cloudonly-with-mail-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversionUserDetails"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.conversionUserDetails",
    "displayName": "Adele Vance",
    "userPrincipalName": "AdeleVance@contoso.com",
    "convertedToInternalUserDateTime": "2024-02-05T20:16:37.5012924Z",
    "mail": "AdeleV@woodgrove.com"
}
```

### Example 3: Convert external User to internal for a user synchronized from on-premises AD

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userthis.convertexternaltointernalmemberuser-synceduser"
}
-->
```http
POST https://graph.microsoft.com/beta/users/0b8cc234-ef87-4015-9785-cbb42000d41c/convertExternalToInternalMemberUser
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/userthisconvertexternaltointernalmemberuser-synceduser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/userthisconvertexternaltointernalmemberuser-synceduser-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/userthisconvertexternaltointernalmemberuser-synceduser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/userthisconvertexternaltointernalmemberuser-synceduser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userthisconvertexternaltointernalmemberuser-synceduser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/userthisconvertexternaltointernalmemberuser-synceduser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/userthisconvertexternaltointernalmemberuser-synceduser-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/userthisconvertexternaltointernalmemberuser-synceduser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversionUserDetails"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.conversionUserDetails",
    "displayName": "Adele Vance",
    "userPrincipalName": "AdeleVance@contoso.com",
    "convertedToInternalUserDateTime": "2024-02-05T20:16:37.5012924Z",
    "mail": "AdeleV@woodgrove.com"
}
```

## Related content

- [Convert external users to internal users](/entra/identity/users/convert-external-users-internal)
