---
title: "identityProviderBase resource type"
description: "Represents identity providers in a Microsoft Entra tenant and an Azure AD B2C tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
toc.title: "External Identities identity provider"
ms.date: 07/22/2024
---

# identityProviderBase resource type
Namespace: microsoft.graph

Represents identity providers with [External Identities](/azure/active-directory/external-identities/) for both Microsoft Entra ID and Azure AD B2C tenants.

For Microsoft Entra B2B scenarios in a Microsoft Entra directory, the identity provider can be a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md), both of which inherit from the identityProviderBase resource type.

Configuring an identity provider in your Microsoft Entra directory enables new Microsoft Entra B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C directory, the identity provider type can be a [socialIdentityProvider](../resources/socialidentityprovider.md) or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), all which inherit from the identityProviderBase resource type.

Configuring an identity provider in your Azure AD B2C directory enables users to sign up and sign in using a social account or a custom OpenID Connect supported provider in an application. For example, an application can use Azure AD B2C to allow users to sign up for the service using a Facebook account or their own custom identity provider that complies with OIDC protocol.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List configured identity providers](../api/identitycontainer-list-identityproviders.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all identity providers configured in a tenant.|
|[Create identity provider](../api/identitycontainer-post-identityproviders.md)| [socialidentityprovider](../resources/socialidentityprovider.md) or  [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) |Create a new object of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) (Microsoft Entra ID or Azure AD B2C) <li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (Azure AD B2C) </li></ul>|
|[Get](../api/identityproviderbase-get.md) |[socialidentityprovider](../resources/socialidentityprovider.md), [builtInIdentityProvider](../resources/builtinidentityprovider.md) or  [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md)| Retrieve properties of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) (Microsoft Entra ID or Azure AD B2C) <li> [builtInIdentityProvider](../resources/builtinidentityprovider.md) (Microsoft Entra ID or Azure AD B2C) <li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (Azure AD B2C) </li></ul>|
|[Update](../api/identityproviderbase-update.md)|None|Update one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) (Microsoft Entra ID or Azure AD B2C) <li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (Azure AD B2C) </li></ul>|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) (Microsoft Entra ID or Azure AD B2C) <li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (Azure AD B2C) (Azure AD B2C)|
|[List available identity providers](../api/identityproviderbase-availableprovidertypes.md)|String collection|Retrieve all supported identity provider types in the tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the identity provider.|
|id|String|The identifier of the identity provider.|

## JSON representation
The following JSON representation shows the resource type.
The following JSON representation shows the resource type.

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
