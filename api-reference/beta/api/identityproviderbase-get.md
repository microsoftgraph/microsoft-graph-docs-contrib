---
title: "Get identityProvider"
description: "Retrieve the properties and relationships of an identityProvider object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "brozbab"
ms.subservice: "entra-sign-in"
ms.date: 11/16/2024
---

# Get identityProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of the specified identity provider configured in the tenant.

Among the types of providers derived from identityProviderBase, in Microsoft Entra, this operation can get a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (external tenant only), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or an [oidcIdentityProvider](../resources/oidcidentityprovider.md) (external tenant only) resource.

In Azure AD B2C, this operation can get a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or an [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) resource.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityproviderbase_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityproviderbase-get-permissions.md)]

The work or school account needs to belong to at least the *External Identity Provider Administrator* or *External Identity User Flow administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/identityProviders/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or [oidcIdentityProvider](../resources/oidcidentityprovider.md) in the response body for a workforce or external tenant.

For an Azure AD B2C tenant, this method returns a `200 OK` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), or a [builtinIdentityProvider](../resources/builtinidentityprovider.md) object in the response body.

## Examples

<a name='example-1-retrieve-a-specific-social-identity-provider-azure-ad-or-azure-ad-b2c'></a>

### Example 1: Retrieve a **social identity provider**

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_socialidentityprovider_from_identityproviderbase",
  "sampleKeys": ["Amazon-OAUTH"]
}    
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders/Amazon-OAUTH
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-socialidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-socialidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-socialidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-socialidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-socialidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-socialidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-socialidentityprovider-from-identityproviderbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
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
    "clientId": "qazx.1234",
    "clientSecret": "******"
}
```

<a name='example-2-retrieve-a-specific-built-in-identity-provider-only-for-azure-ad'></a>

### Example 2: Retrieve a **built-in identity provider**

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_builtinidentityprovider_from_identityproviderbase",
  "sampleKeys": ["MSASignup-OAUTH"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders/MSASignup-OAUTH
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-builtinidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-builtinidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-builtinidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-builtinidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-builtinidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-builtinidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-builtinidentityprovider-from-identityproviderbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
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

### Example 3: Retrieve an **Apple identity provider**

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_applemanagedidentityprovider_from_identityproviderbase",
  "sampleKeys": ["Apple-Managed-OIDC"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders/Apple-Managed-OIDC
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-applemanagedidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-applemanagedidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-applemanagedidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-applemanagedidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-applemanagedidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-applemanagedidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-applemanagedidentityprovider-from-identityproviderbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appleManagedIdentityProvider"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "Apple-Managed-OIDC",
    "displayName": "Sign in with Apple",
    "developerId": "developerId12345",
    "serviceId": "com.microsoft.rts.b2c.test.client",
    "keyId": "12345",
    "certificateData": "******"
}
```
### Example 4: Retrieve an **OpenID Connect identity provider** (Azure AD B2C tenant)

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_openidconnectidentityprovider_from_identityproviderbase",
  "sampleKeys": ["Contoso-00001111-aaaa-2222-bbbb-3333cccc4444"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders/Contoso-00001111-aaaa-2222-bbbb-3333cccc4444
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-openidconnectidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-openidconnectidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-openidconnectidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-openidconnectidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-openidconnectidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-openidconnectidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-openidconnectidentityprovider-from-identityproviderbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
  "id": "Contoso-00001111-aaaa-2222-bbbb-3333cccc4444",
  "displayName": "Contoso",
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "clientSecret": "4294967296",
  "claimsMapping": {
      "userId": "myUserId",
      "givenName": "myGivenName",
      "surname": "mySurname",
      "email": "myEmail",
      "displayName": "myDisplayName"
  },
  "domainHint": "mycustomoidc",
  "metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
  "responseMode": "form_post",
  "responseType": "code",
  "scope": "openid"
}
```

### Example 5: Retrieve an **OIDC identity provider** (External tenant)

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_oidcidentityprovider_from_identityproviderbase",
}    
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/identityProviders/12345678-abcd-1234-cdef-aaaaaaaaaaaa
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-oidcidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-oidcidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-oidcidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-oidcidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-oidcidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-oidcidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-oidcidentityprovider-from-identityproviderbase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oidcIdentityProvider"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.OidcIdentityProvider",
  "id": "12345678-abcd-1234-cdef-aaaaaaaaaaaa",
  "displayName": "Contoso",
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "issuer": "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/",
  "wellKnownEndpoint": "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",
  "responseType": "code",
  "scope": "openid profile email offline_access",
  "clientAuthentication": {
    "@odata.type": "#microsoft.graph.OIDCClientSecretAuthentication",
    "clientSecret": "12345"
  },
  "inboundClaimMapping": {
    "sub": "sub",
    "name": "name",
    "given_name": "given_name",
    "family_name": "family_name",
    "email": "email",
    "email_verified": "email_verified",
    "phone_number": "phone_number",
    "phone_number_verified": "phone_number_verified",
    "address": {
      "street_address": "street_address",
      "locality": "locality",
      "region": "region",
      "postal_code": "postal_code",
      "country": "country"
    }
  }
}
```
