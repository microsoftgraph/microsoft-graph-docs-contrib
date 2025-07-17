---
title: "socialIdentityProvider resource type"
description: "Represents social identity providers in a Microsoft Entra tenant and an Azure AD B2C tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
ms.date: 07/22/2024
---

# socialIdentityProvider resource type
Namespace: microsoft.graph

Represents social identity providers with [External Identities](/azure/active-directory/external-identities/) for both Microsoft Entra tenant and an Azure AD B2C tenant.

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

For Microsoft Entra B2B scenarios in a Microsoft Entra tenant, the identity provider type can be `Google` or `Facebook`.

Configuring an identity provider in your Microsoft Entra tenant enables new Microsoft Entra B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C tenant, the identity provider type can be `Microsoft`, `Google`, `Facebook`, `Amazon`, `LinkedIn`, or `Twitter`. The following identity providers are in preview: `Weibo`, `QQ`, `WeChat`, and `GitHub`.

Configuring an identity provider in your Azure AD B2C tenant enables users to sign up and sign in using a social account supported provider in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.

## Methods

None. 

For the list of API operations for managing social identity providers, see the [identityProviderBase](../resources/identityproviderbase.md) resource type.

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|clientId|String|The identifier for the client application obtained when registering the application with the identity provider. Required.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns `****`. Required.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|identityProviderType|String|For a B2B scenario, possible values: `Google`, `Facebook`. For a B2C scenario, possible values: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`. Required.|

### Where to get the client identifier and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client identifier and client secret can be passed to [create identityProvider](../api/identitycontainer-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign-in page. The token from the identity provider is validated by Microsoft Entra ID before the tenant issues a token to the application.

## JSON representation

The following JSON representation shows the resource type.

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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
 "description": "socialIdentityProvider",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
