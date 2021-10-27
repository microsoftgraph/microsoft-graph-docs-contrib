---
title: "Get identityProvider"
description: "Retrieve the properties and relationships of an identityProvider object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "namkedia"
ms.prod: "identity-and-sign-in"
---

# Get identityProvider
Namespace: microsoft.graph

Get the properties and relationships of the specified identity provider in the tenant.

Among the types of providers derived from identityProviderBase, you can currently get a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md) resource in Azure AD. In Azure AD B2C, this operation can currently get a [socialIdentityProvider](../resources/socialidentityprovider.md) resource.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global Administrator
* External Identity Provider Administrator
* External ID user flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md) in the response body for an Azure AD tenant.

For an Azure AD B2C tenant, this method returns a `200 OK` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in the response body.

## Examples

### Example 1: Retrieve a specific social identity provider (Azure AD or Azure AD B2C)

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_socialidentityprovider_from_identityproviderbase"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/identityProviders/Amazon-OAUTH
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-socialidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-socialidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-socialidentityprovider-from-identityproviderbase-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-socialidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.socialIdentityProvider"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "Amazon-OAUTH",
    "displayName": "Amazon",
    "identityProviderType": "Amazon",
    "clientId": "09876545678908765978678",
    "clientSecret": "******"
}
```

### Example 2: Retrieve a specific built-in identity provider (only for Azure AD)

#### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_builtinidentityprovider_from_identityproviderbase"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/identity/identityProviders/MSASignup-OAUTH
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-builtinidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-builtinidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-builtinidentityprovider-from-identityproviderbase-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-builtinidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.builtInIdentityProvider"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "MSASignup-OAUTH",
    "identityProviderType": "MicrosoftAccount",
    "displayName": "MicrosoftAccount"
}
```
