---
title: "openIdConnectProvider resource type"
description: "Represents OpenIDConnect identity providers in an Azure Active Directory B2C tenant (deprecated)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
toc.title: OpenID Connect identity provider (deprecated)
ms.date: 11/16/2024
---

# openIdConnectProvider resource type (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Represents OpenID Connect identity providers in an Azure Active Directory B2C tenant.

Configuring an OpenID Connect provider in a B2C tenant enables users to sign up and sign in using their custom identity provider in an application.

Inherits from [identityProvider](../resources/identityprovider.md).

## Methods

None.

For the list of API operations for managing the Open ID Connect provider, see [identityProvider](../resources/identityprovider.md).

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client identifier for the application obtained when registering the application with the identity provider. Inherited from [identityProvider](../resources/identityprovider.md). This is a required property.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. The clientSecret has a dependency on **responseType**. When **responseType** is `code`, a secret is required for the auth code exchange. When **responseType** is `id_token` the secret isn't required because there's no code exchange, the `id_token` is returned directly from the authorization response. This is write-only. A read operation returns "\*\*\*\*". Inherited from [identityProvider](../resources/identityprovider.md).|
|id|String|The ID of the identity provider. It's a required property and is read only after creation.|
|name|String|The display name of the identity provider. It's a required property and is read only after creation.|
|type|String|The identity provider type. It must be `OpenIDConnect`. It's a required property and is read only after creation.|
|claimsMapping|[claimsMapping](../resources/claimsmapping.md)|After the OIDC provider sends an ID token back to Microsoft Entra ID, Microsoft Entra ID needs to be able to map the claims from the received token to the claims that Microsoft Entra ID recognizes and uses. This complex type captures that mapping. It's a required property.|
|domainHint|String|The domain hint can be used to skip directly to the sign-in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.|
|metadataUrl|String|The URL for the metadata document of the OpenID Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in a well-known/openid-configuration. For the OpenID Connect identity provider you're looking to add, you need to provide the metadata URL. It's a required property and is read only after creation.|
|responseMode|openIdConnectResponseMode|The response mode defines the method that should be used to send the data back from the custom identity provider to Azure AD B2C. The following response modes can be used: `form_post`, `query`. `query` response mode means the code or token is returned as a query parameter. `form_post` response mode is recommended for the best security. The response is transmitted via the HTTP POST method, with the code or token being encoded in the body using the application/x-www-form-urlencoded format. It's a required property.|
|responseType|[openIdConnectResponseTypes](#openidconnectresponsetypes-values)| response type describes what kind of information is sent back in the initial call to the authorization_endpoint of the custom identity provider. The following response types can be used: `code` , `id_token` , `token`. It's a required property.|
|scope|String|Scope defines the information and permissions you're looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users aren't able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended separated by space. For more information about the scope limitations, see [RFC6749 Section 3.3](https://tools.ietf.org/html/rfc6749#section-3.3). It's a required property.|

### openIdConnectResponseTypes values

|Member|Description|
|:---|:---|
|code|As per the authorization code flow, a code is returned back to Azure AD B2C. Azure AD B2C proceeds to call the token_endpoint to exchange the code for the token.|
|id_token|An ID token is returned back to Azure AD B2C from the custom identity provider. |
|token|An access token is returned back to Azure AD B2C from the custom identity provider. Currently not supported by Azure AD B2C. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.openIdConnectProvider"
} -->

```json
{
  "id": "String",
  "name": "String",
  "type": "String",
  "clientId": "String",
  "clientSecret": "String",
  "claimsMapping": {
      "@odata.type": "#microsoft.graph.claimsMapping",
      "userId": "String",
      "givenName": "String",
      "surname": "String",
      "email": "String",
      "displayName": "String"
  },
  "domainHint": "String",
  "metadataUrl": "String",
  "responseMode": "String",
  "responseType": "String",
  "scope": "String"
}
```
