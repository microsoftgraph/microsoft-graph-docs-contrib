---
title: "Create identityProvider"
description: "Create a new identityProvider object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "brozbab"
ms.subservice: "entra-sign-in"
ms.date: 11/16/2024
---

# Create identityProvider
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an identity provider object that is of the type specified in the request body.

Among the types of providers derived from identityProviderBase, in Microsoft Entra, this operation can create a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (external tenant only), or an [oidcIdentityProvider](../resources/oidcidentityprovider.md) (external tenant only) resource.

In Azure AD B2C, this operation can create a [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtinIdentityProvider](../resources/builtinidentityprovider.md), or an [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) resource.



[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_post_identityproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-post-identityproviders-permissions.md)]

[!INCLUDE [rbac-identity-provider-apis](../includes/rbac-for-apis/rbac-identity-provider-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identity/identityProviders
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of [socialIdentityProvider](../resources/socialidentityprovider.md), [oidcIdentityProvider](../resources/oidcidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) object in Microsoft Entra External ID.

In Azure AD B2C provide a JSON representation of [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) object.

All the properties listed in the following tables are required.

### socialIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider. |
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns `****`.|
|identityProviderType|String|For external and workforce tenants, possible values: `Facebook`, `Google`.<br>For Azure AD B2C tenants, possible values: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`.|

### appleManagedIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|developerId|String|The Apple developer identifier.|
|serviceId|String|The Apple service identifier.|
|keyId|String|The Apple key identifier.|
|certificateData|String|The certificate data which is a long string of text from the certificate, can be null.|

### openIdConnectIdentityProvider object

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on **responseType**. <ul><li>When **responseType** is `code`, a secret is required for the auth code exchange.</li><li>When **responseType** is `id_token` the secret is not required because there is no code exchange in the authentication pipeline. In this mode, the id_token is returned directly from the authorization response.</li></ul>|
|domainHint|String|The domain hint can be used to skip directly to the sign in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.|
|claimsMapping|[claimsMapping](../resources/claimsmapping.md)|After the OIDC provider sends an ID token back to Microsoft Entra ID, Microsoft Entra ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.|
|metadataUrl|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in `.well-known/openid-configuration`. Provide the metadata URL for the OpenID Connect identity provider you add.|
|responseMode|String|The response mode defines the method used to send data back from the custom identity provider to Azure AD B2C. Possible values: `form_post`, `query`.|
|responseType|String|The response type describes the type of information sent back in the initial call to the authorization_endpoint of the custom identity provider. Possible values: `code` , `id_token` , `token`.|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|

### oidcIdentityProvider object

|Property|Type|Description|
|:---|:---|:---|
|clientAuthentication|[oidcClientAuthentication](../resources/oidcclientauthentication.md)|The client authentication settings.<li> Use the **oidcClientSecretAuthentication** derived complex type for setting up your identity provider with `client_secret_post` or `client_secret_jwt authentication` methods. <li> Use the **oidcPrivateJwtKeyClientAuthentication** type for setting up your identity provider with `private_key_jwt` authentication method. <br><br>Due to security reasons, `client_secret_basic` authentication method isn't supported.|
|clientId|String|The client ID for the application obtained when registering the application with the identity provider.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider.Required. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Inherits from [entity](../resources/entity.md)|
|inboundClaimMapping|[oidcInboundClaimMappingOverride](../resources/oidcinboundclaimmappingoverride.md)|After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.|
|issuer|String|The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components.<br> **Note:** Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the `microsoftonline.com` domain in the issuer URI is not accepted.|
|responseType|oidcResponseType|The response type describes the type of information sent back in the initial call to the authorization_endpoint of the custom identity provider. Possible values: <li>`code`: As per the authorization code flow, a code is returned back to Entra External ID. Entra External ID proceeds to call the token_endpoint to exchange the code for the token.<li>`id_token`:  An ID token is returned back to Entra External ID from the custom identity provider. (This value is not supported at the moment).<li>`token`: An access token is returned back to Entra External ID from the custom identity provider. This value is currently unsupported.|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|
|wellKnownEndpoint|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in `.well-known/openid-configuration`.<br> **Note:** The metadata document should, at minimum, contain the following properties: `issuer`, `authorization_endpoint`, `token_endpoint`, `token_endpoint_auth_methods_supported`, `response_types_supported`, `subject_types_supported` and `jwks_uri`. Visit [OpenID Connect Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html) specifications for more details.|

## Response

If successful, this method returns a `201 Created` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md) object in the response body for a Microsoft Entra tenant.

For an Azure AD B2C tenant, this method returns a `201 Created` response code and a JSON representation of a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) object in the response body.

If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

<a name='example-1-create-a-specific-social-identity-provider-azure-ad-and-azure-ad-b2c'></a>

### Example 1: Create a social identity provider

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_socialidentityprovider_from_identityproviderbase"
}
-->

```http
POST https://graph.microsoft.com/beta/identity/identityProviders
Content-type: application/json

{
  "@odata.type": "microsoft.graph.socialIdentityProvider",
  "displayName": "Login with Amazon",
  "identityProviderType": "Amazon",
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "clientSecret": "42*****96"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-socialidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-socialidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-socialidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-socialidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-socialidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-socialidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-socialidentityprovider-from-identityproviderbase-python-snippets.md)]
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
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.type": "microsoft.graph.socialIdentityProvider",
    "id": "Amazon-OAUTH",
    "displayName": "Login with Amazon",
    "identityProviderType": "Amazon",
    "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "clientSecret": "42*****96"
}
```

### Example 2: Create an Apple identity provider 

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_applemanagedidentityprovider_from_identityproviderbase"
}
-->

```http
POST https://graph.microsoft.com/beta/identity/identityProviders
Content-type: application/json

{
  "@odata.type": "microsoft.graph.appleManagedIdentityProvider",
  "displayName": "Apple",
  "developerId": "qazx.1234",
  "serviceId": "com.contoso.app",
  "keyId": "4294967296",
  "certificateData": "******"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-applemanagedidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-applemanagedidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-applemanagedidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-applemanagedidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-applemanagedidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-applemanagedidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-applemanagedidentityprovider-from-identityproviderbase-python-snippets.md)]
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
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "microsoft.graph.appleManagedIdentityProvider",
  "id": "Apple-Managed-OIDC",
  "displayName": "Apple",
  "developerId": "qazx.1234",
  "serviceId": "com.contoso.app",
  "keyId": "4294967296",
  "certificateData": "******"
}
```

### Example 3: Create an OpenID Connect identity provider (B2C tenant)

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_openidconnectidentityprovider_from_identityproviderbase"
}
-->

```http
POST https://graph.microsoft.com/beta/identity/identityProviders
Content-type: application/json

{
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-openidconnectidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-openidconnectidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-openidconnectidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-openidconnectidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-openidconnectidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-openidconnectidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-openidconnectidentityprovider-from-identityproviderbase-python-snippets.md)]
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
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
  "id": "Contoso-OIDC-00001111-aaaa-2222-bbbb-3333cccc4444",
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

### Example 4: Create an OpenID Connect identity provider (external tenant)

#### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_oidcidentityprovider_from_identityproviderbase"
}
-->

```http
POST https://graph.microsoft.com/beta/identity/identityProviders
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.OidcIdentityProvider",
  "displayName": "Contoso AAD B2C",
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "issuer": "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/",
  "wellKnownEndpoint": "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",
  "responseType": "code",
  "scope": "openid profile email offline_access",
  "clientAuthentication": {
    "@odata.type": "#microsoft.graph.oidcClientSecretAuthentication",
    "clientSecret": "4294967296"
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-oidcidentityprovider-from-identityproviderbase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-oidcidentityprovider-from-identityproviderbase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-oidcidentityprovider-from-identityproviderbase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-oidcidentityprovider-from-identityproviderbase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-oidcidentityprovider-from-identityproviderbase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-oidcidentityprovider-from-identityproviderbase-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-oidcidentityprovider-from-identityproviderbase-python-snippets.md)]
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
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.OidcIdentityProvider",
  "id": "12345678-abcd-1234-cdef-aaaaaaaaaaaa",
  "displayName": "Contoso AAD B2C",
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "issuer": "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/",
  "wellKnownEndpoint": "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",
  "responseType": "code",
  "scope": "openid profile email offline_access",
  "clientAuthentication": {
    "@odata.type": "#microsoft.graph.oidcClientSecretAuthentication",
    "clientSecret": "*****"
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
