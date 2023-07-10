---
title: "Get settings"
description: "Read the user and organization settings object."
author: "yyuank"
ms.localizationpriority: high
ms.prod: "users"
doc_type: apiPageType
---

# Get settings

Namespace: microsoft.graph

Read the user and organization [userSettings](../resources/usersettings.md) object.
To learn how to update the properties of the [userSettings](../resources/usersettings.md) object, see [update user settings](usersettings-update.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read.All, User.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.Read.All,User.ReadWrite.All |

## HTTP request

```http
GET /me/settings/
```

Request with a 'user id' or 'userPrincipalName' is only accessible by the user or by a user with the User.ReadWrite.All permissions. To learn more, see [Permissions](/graph/permissions-reference).

```http
GET /users/{id | userPrincipalName}/settings/
```

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [userSettings](../resources/usersettings.md) object in the response body.

## Example

##### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_usersettings"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/settings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-usersettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-usersettings-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-usersettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-usersettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-usersettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-usersettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-usersettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-usersettings-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response

Here is an example of the response. Note: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  
} -->

```http
HTTP/1.1 200 OK
```
<!--Content-type: application/json

{
  "contributionToContentDiscoveryAsOrganizationDisabled": false,
  "contributionToContentDiscoveryDisabled": false
} 
```
-->
