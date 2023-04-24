---
title: "Update an oAuth2PermissionGrant"
description: "Update the properties of an oAuth2PermissionGrant, representing a delegated permission grant."
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "identity-and-sign-in"
author: "psignoret"
---

# Update a delegated permission grant (oAuth2PermissionGrant)

Namespace: microsoft.graph


Update the properties of [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object, representing a delegated permission grant.

An **oAuth2PermissionGrant** can be updated to change which delegated permissions are granted, by adding or removing items from the list in **scopes**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | DelegatedPermissionGrant.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | DelegatedPermissionGrant.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /oauth2PermissionGrants/{id}
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|scope|String|A space-separated list of the claim values for delegated permissions which should be included in access tokens for the resource application (the API). For example, `openid User.Read GroupMember.Read.All`. Each claim value should match the **value** field of one of the delegated permissions defined by the API, listed in the **oauth2PermissionScopes** property of the resource [service principal](../resources/serviceprincipal.md).  Must not exceed 3850 characters in length.<br/><br/> To add new scopes to the existing values, specify both the existing and new scopes in this parameter. Otherwise, the action will overwrite the existing scopes.|

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_oAuth2PermissionGrant",
  "sampleKeys": ["l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk"]
}-->

```http
PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants/l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk
Content-Type: application/json

{
    "scope": "User.ReadBasic.All Group.ReadWrite.All"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-oauth2permissiongrant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-oauth2permissiongrant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-oauth2permissiongrant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-oauth2permissiongrant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-oauth2permissiongrant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-oauth2permissiongrant-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update oAuth2PermissionGrant",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

