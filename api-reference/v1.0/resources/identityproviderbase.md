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

Represents identity providers with [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory tenant and an Azure AD B2C tenant.

For Azure AD B2B scenarios in an Azure AD directory, the identity provider can be a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md), which will inherit from identityProviderBase resource type.

Configuring an identity provider in your Azure AD directory enables new Azure AD B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C directory, the identity provider type can be a [socialIdentityProviders](../resources/socialidentityprovider.md) which will inherit from identityProviderBase resource type.

Configuring an identity provider in your Azure AD B2C directory enables users to sign up and sign in using a social account in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|identityProviderBase collection|Retrieve all identity providers configured in a tenant.|
|[List available provider types](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Retrieve all available identity provider types.|
|[Get](../api/identityproviderbase-list-availableprovidertypes.md)|String collection|Get the properties and relationships of the specified identity provider in a tenant.|

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
