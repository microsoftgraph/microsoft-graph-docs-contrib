---
title: "Create oAuth2PermissionGrant (a delegated permission grant)"
description: "Create an oAuth2PermissionGrant object, representing a delegated permission grant."
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "identity-and-sign-in"
author: "psignoret"
---

# Create oAuth2PermissionGrant (a delegated permission grant)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a delegated permission grant, represented by an [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object.

A delegated permission grant authorizes a client service principal (representing a client application) to access a resource service principal (representing an API), on behalf of a signed-in user, for the level of access limited by the delegated permissions which were granted.

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
POST /oauth2PermissionGrants
```

## Request headers

| Name       | Type | Description |
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of an [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object.

The following table shows the properties that are required when you create the [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md).

| Property | Type | Description |
|:---------------|:--------|:----------|
| clientId | String | The **id** of the client [service principal](../resources/serviceprincipal.md) for the application which is authorized to act on behalf of a signed-in user when accessing an API. Required.  |
| consentType | String | Indicates whether authorization is granted for the client application to impersonate all users or only a specific user. *AllPrincipals* indicates authorization to impersonate all users. *Principal* indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Non-admin users may be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required.  |
| principalId | String | The **id** of the [user](../resources/user.md) on behalf of whom the client is authorized to access the resource, when **consentType** is *Principal*. If **consentType** is *AllPrincipals* this value is null. Required when **consentType** is *Principal*. |
| resourceId | String | The **id** of the resource [service principal](../resources/serviceprincipal.md) to which access is authorized. This identifies the API which the client is authorized to attempt to call on behalf of a signed-in user. |
| scope | String | A space-separated list of the claim values for delegated permissions which should be included in access tokens for the resource application (the API). For example, `openid User.Read GroupMember.Read.All`. Each claim value should match the **value** field of one of the delegated permissions defined by the API, listed in the **publishedPermissionScopes** property of the resource [service principal](../resources/serviceprincipal.md).  Must not exceed 3850 characters in length.|
| startTime | DateTimeOffset | Currently, the start time value is ignored, but a value is required. Required. |
| expiryTime | DateTimeOffset | Currently, the end time value is ignored, but a value is required. Required. |

## Response

If successful, this method returns a 200-series response code and a new [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) object in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_oAuth2PermissionGrant"
}-->

```http
POST https://graph.microsoft.com/beta/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "AllPrincipals",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "DelegatedPermissionGrant.ReadWrite.All",
    "startTime": "2022-03-17T00:00:00Z",
    "expiryTime": "2023-03-17T00:00:00Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-oauth2permissiongrant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-oauth2permissiongrant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-oauth2permissiongrant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-oauth2permissiongrant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-oauth2permissiongrant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-oauth2permissiongrant-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oAuth2PermissionGrant"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#oauth2PermissionGrants/$entity",
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "AllPrincipals",
    "expiryTime": "2023-03-17T00:00:00Z",
    "id": "l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk",
    "principalId": null,
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "DelegatedPermissionGrant.ReadWrite.All",
    "startTime": "2022-03-17T00:00:00Z"
}
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


