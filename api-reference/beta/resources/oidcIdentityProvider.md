---
title: "oidcIdentityProvider resource type"
description: "Represents OpenIDConnect identity providers in an Entra tenant."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "brozbab"
---

# oidcIdentityProvider resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents OpenID Connect identity providers in an external tenant.

Configuring an OpenID Connect provider in an external tenant enables users to sign up and sign in to any application using their custom identity provider.

## Methods

None.

For the list of API operations for managing OpenID Connect identity providers, see the [identityProviderBase](../resources/identityproviderbase.md) resource type.


## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|id|String|The identifier of the identity provider.Required. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|clientId|String|The client ID for the application obtained when registering the application with the identity provider.|
|issuer|String|The issuer URI. Issuer URI is a case-sensitive URL using https scheme contains scheme, host, and optionally, port number and path components and no query or fragment components.<br> **Note:** Configuring other Microsoft Entra tenants as an external identity provider is currently not supported. As a result, the `microsoftonline.com` domain in the issuer URI is not accepted.|
|wellKnownEndpoint|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in `.well-known/openid-configuration`.<br> **Note:** The metadata document should, at minimum, contain the following properties: `issuer`, `authorization_endpoint`, `token_endpoint`, `token_endpoint_auth_methods_supported`, and  `response_types_supported`. Visit [OpenID Connect Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html) specifications for more details.|
|responseType|String|The response type describes the type of information sent back in the initial call to the authorization_endpoint of the custom identity provider. Possible values: <br>`code`: As per the authorization code flow, a code is returned back to Entra External ID. Entra External ID proceeds to call the token_endpoint to exchange the code for the token.<br>`id_token`:  An ID token is returned back to Entra External ID from the custom identity provider. (This value is not supported at the moment).<br>`token`: An access token is returned back to Entra External ID from the custom identity provider. (This value is not supported at the moment).|
|scope|String|Scope defines the information and permissions you are looking to gather from your custom identity provider.|
|clientAuthentication|[clientAuthentication](../resources/clientAuthentication.md)|The client authentication settings.<br> use **`oidcClientSecretAuthentication`** type for setting up your identity provider with `client_secret_post` or `client_secret_jwt authentication` methods. <br> use **`oidcPrivateJwtKeyClientAuthentication`** type for setting up your identity provider with `private_key_jwt` authentication method. <br>Due to security reasons, `client_secret_basic` authentication method is not supported.|
|inboundclaimMapping|[inboundclaimMapping](../resources/inboundclaimmapping.md)|After the OIDC provider sends an ID token back to Microsoft Entra External ID, Microsoft Entra External ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping.|


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",
  "baseType": "microsoft.graph.identityProviderBase",
} -->

```json
{
  "@odata.type": "#microsoft.graph.OidcIdentityProvider",
  "displayName": "String",
  "id": "String (identifier)",
  "clientId": "String",
  "issuer": "String",
  "wellKnownEndpoint": "String",
  "responseType": "String",
  "scope": "String",
  "clientAuthentication": {
    "clientSecret": "String",
  },
  "inboundClaimMapping": {
    "@odata.type": "microsoft.graph.claimsMapping",
    "sub": "String",
    "name": "String",
    "given_name": "String",
    "family_name": "String",
    "email": "String",
    "email_verified": "Boolean",
    "phone_number": "String",
    "phone_number_verified": "Boolean",
    "address": {
      "street_address": "String",
      "locality": "String",
      "region": "String",
      "postal_code": "String",
      "country": "String"
  }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2021-03-30 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "oidcIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
