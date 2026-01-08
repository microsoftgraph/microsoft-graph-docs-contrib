---
title: "oidcIdentityProvider resource type"
description: "Represents OpenID Connect identity providers in an Entra external tenant."
author: "brozbab"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/16/2024
toc.title: OIDC identity provider
---

# oidcIdentityProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents OpenID Connect identity providers in a Microsoft Entra external tenant.

Configuring an OpenID Connect provider in an external tenant enables users to sign up and sign in to any application using their custom OpenID Connect identity provider.

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

For more information, see [Add OpenID Connect as an external identity provider (preview)](/entra/external-id/customers/how-to-custom-oidc-federation-customers).

## Methods

None.

For the list of API operations for managing the oidcIdentityProvider resource, see the [identityProviderBase](../resources/identityproviderbase.md) resource type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|clientAuthentication|[oidcClientAuthentication](../resources/oidcclientauthentication.md)|The client authentication settings.<ul><li> Use the **oidcClientSecretAuthentication** derived complex type for setting up your identity provider with `client_secret_post` or `client_secret_jwt authentication` methods. </li><li> Use the **oidcPrivateJwtKeyClientAuthentication** type for setting up your identity provider with `private_key_jwt` authentication method. <br><br>Due to security reasons, `client_secret_basic` authentication method isn't supported.</li></ul>|
|clientId|String|The client ID for the application obtained when registering the application with the identity provider.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider.Required. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Inherits from [entity](../resources/entity.md)|
|inboundClaimMapping|[oidcInboundClaimMappingOverride](../resources/oidcinboundclaimmappingoverride.md)|After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.|
|issuer|String|The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components.<br> **Note:** Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the `microsoftonline.com` domain in the issuer URI is not accepted.|
|responseType|oidcResponseType|The response type describes the type of information sent back in the initial call to the authorization_endpoint of the custom identity provider. Possible values: <ul><li>`code`: As per the authorization code flow, a code is returned back to Entra External ID. Entra External ID proceeds to call the token_endpoint to exchange the code for the token.</li><li>`id_token`:  An ID token is returned back to Entra External ID from the custom identity provider. (This value is not supported at the moment).</li><li>`token`: An access token is returned back to Entra External ID from the custom identity provider. This value is currently unsupported.</li></ul>|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|
|wellKnownEndpoint|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in `.well-known/openid-configuration`.<br> **Note:** The metadata document should, at minimum, contain the following properties: `issuer`, `authorization_endpoint`, `token_endpoint`, `token_endpoint_auth_methods_supported`, `response_types_supported`, `subject_types_supported` and `jwks_uri`. Visit [OpenID Connect Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html) specifications for more details.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oidcIdentityProvider",
  "baseType": "microsoft.graph.identityProviderBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oidcIdentityProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "supportedTenantTypes": "String",
  "clientId": "String",
  "issuer": "String",
  "wellKnownEndpoint": "String",
  "responseType": "String",
  "scope": "String",
  "clientAuthentication": {
    "@odata.type": "microsoft.graph.oidcClientAuthentication"
  },
  "inboundClaimMapping": {
    "@odata.type": "microsoft.graph.oidcInboundClaimMappingOverride"
  }
}
```

