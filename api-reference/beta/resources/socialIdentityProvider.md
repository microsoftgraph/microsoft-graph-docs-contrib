---
title: "socialIdentityProvider resource type"
description: "Represents social identity providers in an Azure Active Directory tenant and an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "namkedia"
---

# socialIdentityProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents social identity providers with [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory tenant and an Azure AD B2C tenant.

For Azure AD B2B scenarios in an Azure AD tenant, the identity provider type can be Google or Facebook.

Configuring an identity provider in your Azure AD tenant enables new Azure AD B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C tenant, the identity provider type can be Microsoft, Google, Facebook, Amazon, LinkedIn or Twitter. The following identity providers are in preview: Weibo, QQ, WeChat, and GitHub.

Configuring an identity provider in your Azure AD B2C tenant enables users to sign up and sign in using a social account supported provider in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityprovider-list.md)|identityProvider collection|Retrieve all identity providers configured in a tenant.|
|[Create](../api/identityprovider-post-identityproviders.md)|identityProvider|Create a new identity provider.|
|[Get](../api/identityprovider-get.md) |identityProvider|Retrieve properties of an identity provider.|
|[Update](../api/identityprovider-update.md)|None|Update an identity provider.|
|[Delete](../api/identityprovider-delete.md)|None|Delete an identity provider.|
|[List available provider types](../api/identityprovider-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The client ID for the application obtained when registering the application with the identity provider. This is a required field.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. This is write-only. A read operation will return "\*\*\*\*". This is a required field.|
|id|String|The ID of the identity provider.|
|displayName|String|The display name of the identity provider.|
|identityProviderType|String|The identity provider type is a required field.<ul>For B2B scenario:<li/>Google<li/>Facebook</ul><ul>For B2C scenario:<li/>Microsoft<li/>Google<li/>Amazon<li/>LinkedIn<li/>Facebook<li/>GitHub<li/>Twitter<li/>Weibo<li/>QQ<li/>WeChat<li/>OpenIDConnect</ul>|

### Where to get the client ID and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client ID and client secret can be passed to [create identityProvider](../api/identityprovider-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.socialIdentityProvider"
} -->

```json
{
    "id": "String",
    "identityProviderType": "String",
    "displayName": "String",
    "clientId": "String",
    "clientSecret": "String"
}
```