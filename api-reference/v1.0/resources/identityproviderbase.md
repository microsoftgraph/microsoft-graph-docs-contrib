---
title: "identityProviderBase resource type"
description: "Represents identity providers in an Azure Active Directory tenant and an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# identityProviderBase resource type
Namespace: microsoft.graph

Represents identity providers with [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory (Azure AD) and Azure AD B2C tenants. It is an abstract type that is inherited by [socialIdentityProvider](../resources/socialidentityprovider.md) and [builtinIdentityProvider](../resources/builtinidentityprovider.md).

For Azure AD B2B scenarios , the identity provider is either a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md). Configuring an identity provider in your Azure AD tenant enables new Azure AD B2B guest scenarios. For example, an organization with resources in Microsoft 365 can share them with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C directory, the identity provider type is a [socialIdentityProvider](../resources/socialidentityprovider.md). Configuring an identity provider in your Azure AD B2C directory enables users to sign up and sign in using a social account in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|identityProviderBase collection|Retrieve all identity providers configured in a tenant.|
|[Create](../api/identityproviderbase-post-identityproviders.md)|socialidentityprovider |Create a new social identity provider(Azure AD or Azure AD B2C).|
|[Get](../api/identityproviderbase-get.md) |socialidentityprovider or builtInIdentityProvider|Retrieve properties of a social identity provider(Azure AD or Azure AD B2C) or a built in identity provider(Azure AD).|
|[Update](../api/identityproviderbase-update.md)|None|Update a social identity provider(Azure AD or Azure AD B2C).|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete a social identity provider(Azure AD or Azure AD B2C).|
|[List available provider types](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The ID of the identity provider.|
|displayName|String|The display name of the identity provider.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityProviderBase"
} -->

```json
{
    "id": "String",
    "displayName": "String"
}
```
