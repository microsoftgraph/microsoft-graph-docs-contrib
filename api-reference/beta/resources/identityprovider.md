---
title: "identityProvider resource type (deprecated)"
description: "Represents identity providers with external identities in Microsoft Entra and Azure AD B2C tenants."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
toc.title: Identity provider (deprecated)
ms.date: 07/22/2024
---

# identityProvider resource type (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [identityprovider-deprecate](../../includes/identityprovider-deprecate.md)]

Represents identity providers with [external identities](/azure/active-directory/external-identities/) for Microsoft Entra and Azure AD B2C tenants.

For Microsoft Entra B2B scenarios in a Microsoft Entra tenant, the identity provider type can be Google or Facebook.

Configuring an identity provider in your Microsoft Entra tenant enables new Microsoft Entra B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user uses their Google account credentials to authenticate and access the documents.

In an Azure AD B2C tenant, the identity provider type can be **Microsoft**, **Google**, **Facebook**, **Amazon**, **LinkedIn**, **Twitter**, or any [openIdConnectProvider](../resources/openidconnectprovider.md). The following identity providers are in preview: **Weibo**, **QQ**, **WeChat**, and **GitHub**.

Configuring an identity provider in your Azure AD B2C tenant enables users to sign up and sign in using a social account or a custom OpenID Connect supported provider in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account or their own custom identity provider that complies with OIDC protocol.

If it's a custom OpenID Connect identity provider with `OpenIDConnect` as **type** then it's represented using [openIdConnectProvider](../resources/openidconnectprovider.md) resource type, which inherits from this resource type.

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
|clientId|String|The client ID for the application obtained when registering the application with the identity provider. This is a required field. Required. Not nullable.|
|clientSecret|String|The client secret for the application obtained when registering the application with the identity provider. This is write-only. A read operation returns `****`. This is a required field. Required. Not nullable.|
|id|String|The ID of the identity provider.|
|name|String|The display name of the identity provider. Not nullable.|
|type|String|The identity provider type is a required field. For B2B scenario: `Google`, `Facebook`. For B2C scenario: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`,`QQ`, `WeChat`, `OpenIDConnect`. Not nullable.|

### Where to get the client ID and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client ID and client secret can be passed to [create identityProvider](../api/identityprovider-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign in page. Microsoft Entra ID validates the token from the identity provider before the tenant issues a token to the application.

## JSON representation
The following JSON representation shows the resource type.
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityProvider"
} -->

```json
{
    "id": "String",
    "type": "String",
    "name": "String",
    "clientId": "String",
    "clientSecret": "String"
}
```
