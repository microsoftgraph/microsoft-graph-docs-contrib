---
title: "openIdConnectProvider resource type"
description: "Represents OpenIDConnect identity providers in an Azure Active Directory (Azure AD) B2C tenant."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "namkedia"
---

# openIdConnectProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents openIdConnectProvider identity providers in an Azure Active Directory (Azure AD) B2C tenant. 

Configuring an OpenIDConnect provider in B2C tenant enables users to sign up and sign in using their custom identity provider in a consumer application.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get identityProvider](../api/identityprovider-get.md) |identityProvider|Read properties of an existing identityProvider.|
|[Create identityProvider](../api/identityprovider-post-identityproviders.md)|identityProvider|Create a new identityProvider.|
|[Update identityProvider](../api/identityprovider-update.md)|None|Update an existing identityProvider.|
|[Delete identityProvider](../api/identityprovider-delete.md)|None|Delete an existing identityProvider.|
|[List configured identityProviders](../api/identityprovider-list.md)|identityProvider collection|List all identityProviders configured in a tenant.|
|[List available identityProviders](../api/identityprovider-list-available.md)||List all identityProviders available in a tenant.|

## Properties

|Property|Type|Required|Nullable|Description|
|:---------------|:--------|:--------|:--------|:----------|
|clientId|String|Yes|No|The client ID for the application. This is the client ID obtained when registering the application with the identity provider.|
|clientSecret|String|Yes|No|The client secret for the application. This is the client secret obtained when registering the application with the identity provider. The clientSecret has a dependency on responseType. In the case of responseType = code, a secret is required for the auth code exchange, but in the case of responseType = id_token it is not required because there is no code exchange, the id_token is returned directly from the authorization response.This is write-only. A read operation will return "\*\*\*\*".|
|id|String|No|No|The ID of the identity provider.|
|name|String|No|No|The display name of the identity provider.|
|type|String|Yes|No|The identity provider type. It must be one of the following values: <ul><li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook<li/>GitHub<li/>Twitter<li/>Weibo<li/>QQ<li/>WeChat<li/>OpenIDConnect</ul>For B2B scenarios, the value must be Google or Facebook.|
|claimsMapping|[claimsMapping](../resources/claimsmapping.md)|Yes|No|After the OIDC provider sends an ID token back to Azure AD, Azure AD needs to be able to map the claims from the received token to the claims that Azure AD recognizes and uses. This complex type captures that mapping.|
|domainHint|String|No|Yes|The domain hint can be used to skip directly to the sign in page of the specified identity provider, instead of having the user make a selection among the list of available identity providers.|
|metadataUrl|String|Yes|No|The URL for the metadata document of the Open Id Connect identity provider. Every OpenID Connect identity provider describes a metadata document that contains most of the information required to perform sign-in. This includes information such as the URLs to use and the location of the service's public signing keys. The OpenID Connect metadata document is always located at an endpoint that ends in .well-known/openid-configuration . For the OpenID Connect identity provider you are looking to add, you will need to provide the metadata URL.|
|responseMode|[openIdConnectResponseMode](../resources/openIdConnectResponseMode.md)|Yes|No|The response mode defines the method that should be used to send the data back from the custom identity provider to Azure AD B2C. The following response modes can be used: form_post : This response mode is recommended for best security. The response is transmitted via the HTTP POST method, with the code or token being encoded in the body using the application/x-www-form-urlencoded format. query : The code or token is returned as a query parameter.|
|responseType|[openIdConnectResponseTypes](../resources/openIdConnectResponseTypes.md)|Yes|No|he response type describes what kind of information is sent back in the initial call to the authorization_endpoint of the custom identity provider. The following response types can be used:code : As per the authorization code flow, a code will be returned back to Azure AD B2C. Azure AD B2C proceeds to call the token_endpoint to exchange the code for the token. id_token : An ID token is returned back to Azure AD B2C from the custom identity provider. token : An access token is returned back to Azure AD B2C from the custom identity provider. (This value is not supported by Azure AD B2C at the moment)|
|scope|String|Yes|No|Scope defines the information and permissions you are looking to gather from your custom identity provider. OpenID Connect requests must contain the openid scope value in order to receive the ID token from the identity provider. Without the ID token, users are not able to sign in to Azure AD B2C using the custom identity provider. Other scopes can be appended separated by space. For more details about the scope limitations see [RFC6749 Section 3.3.](https://tools.ietf.org/html/rfc6749#section-3.3)|
### Where to get the client ID and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client ID and client secret can be passed to [create identityProvider](../api/identityprovider-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

## JSON representation

The following is a JSON representation of the resource.

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
