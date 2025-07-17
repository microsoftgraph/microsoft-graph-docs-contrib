---
title: "Update phoneAuthenticationMethod"
description: "Update a user's phone number associated with a phoneAuthenticationMethod object."
ms.localizationpriority: medium
author: "luc-msft"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# Update phoneAuthenticationMethod

Namespace: microsoft.graph

Update a user's phone number associated with a [phone authentication method](../resources/phoneauthenticationmethod.md) object.

You can't change a phone's type. To change a phone's type, add a new number of the desired type and then delete the object with the original type.

If a user is enabled by policy to use SMS to sign in and the `mobile` number is changed, the system will attempt to register the number for use in that system.

Self-service operations aren't supported.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/phoneauthenticationmethod-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Update another user's phone authentication method.
<!-- { "blockType": "ignored" } -->
``` http
PATCH /users/{id | userPrincipalName}/authentication/phoneMethods/{phoneMethodId}
```

The value of `phoneMethodId` corresponding to the phoneType to update is one of the following:
+ `b6332ec1-7057-4abe-9331-3d72feddfe41` to update the `alternateMobile` **phoneType**.
+ `e37fc753-ff3b-4958-9484-eaa9425c82bc` to update the `office` **phoneType**.
+ `3179e48a-750b-4051-897c-87b9720928f7` to update the `mobile` **phoneType**.

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will be recalculated based on changes to other property values.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|phoneNumber|String|The phone number to text or call for authentication. Phone numbers use the format `+{country code} {number}x{extension}`, with extension optional. For example, `+1 5555551234` or `+1 5555551234x123` are valid. Numbers are rejected when creating or updating if they do not match the required format.|
|phoneType|string| Possible values are: `mobile`, `alternateMobile`, or `office`.|

## Response

If successful, this method returns a `204 No Content` response code and an updated [phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_phoneauthenticationmethod",
  "sampleKeys": ["kim@contoso.com", "3179e48a-750b-4051-897c-87b9720928f7"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/users/kim@contoso.com/authentication/phoneMethods/3179e48a-750b-4051-897c-87b9720928f7
Content-type: application/json

{
  "phoneNumber": "+1 2065555554",
  "phoneType": "mobile",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-phoneauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-phoneauthenticationmethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-phoneauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-phoneauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-phoneauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-phoneauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-phoneauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-phoneauthenticationmethod-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update phoneauthenticationmethod",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
