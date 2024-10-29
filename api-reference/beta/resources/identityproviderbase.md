---
title: "identityProviderBase resource type"
description: "Represents identity providers in a Microsoft Entra tenant and an Azure AD B2C tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "brozbab"
toc.title: "External Identities identity provider"
---

# identityProviderBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identity providers for both Microsoft Entra External ID and Azure AD B2C tenants.

Configuring an identity provider in your workforce tenant enables new B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.
For Microsoft Entra B2B scenarios in a Microsoft Entra directory, the identity provider can be a [socialIdentityProvider](../resources/socialidentityprovider.md) or a [builtinIdentityProvider](../resources/builtinidentityprovider.md), both of which inherit from the identityProviderBase resource type.

Configuring an identity provider in your Microsoft Entra directory enables new Microsoft Entra B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

In an Azure AD B2C directory, the identity provider type can be a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), all which inherit from the identityProviderBase resource type.

For a Microsoft Entra External ID tenant, the providers can be [socialIdentityProvider](../resources/socialidentityprovider.md), [oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) or [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) objects.

Configuring an identity provider in your Entra External ID or Azure AD B2C directory enables users to sign up and sign in using a social account or a custom OpenID Connect supported provider in an application. For example, an application can use Entra External ID or Azure AD B2C to allow users to sign up for the service using a Facebook account or their own custom identity provider that complies with OIDC protocol (Open ID Connect is currently supported only with external tenants and Azure AD B2C).

For an external tenant, the providers can be [socialIdentityProvider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtInIdentityProvider](../resources/builtinidentityprovider.md), or [oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) objects.

For a workforce tenant, the providers can be [socialIdentityProvider](../resources/socialidentityprovider.md) or [builtInIdentityProvider](../resources/builtinidentityprovider.md) objects.

In an Azure AD B2C directory, the identity provider type can be a [socialIdentityProvider](../resources/socialidentityprovider.md), [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md), or an [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), all which inherit from the identityProviderBase resource type.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List configured identity providers](../api/identitycontainer-list-identityproviders.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all identity providers configured in a tenant.|
|[Create identity provider](../api/identitycontainer-post-identityproviders.md)| [socialidentityprovider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) or [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) |Create a new object of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) <li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)<li>[oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Get](../api/identityproviderbase-get.md) |[socialidentityprovider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtInIdentityProvider](../resources/builtinidentityprovider.md), [oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) or [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) | Retrieve properties of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) <li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant) <li> [builtInIdentityProvider](../resources/builtinidentityprovider.md)<li>[oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) (External tenant only)</li> <li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Update](../api/identityproviderbase-update.md)|None|Update one of the following object types: <ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) <li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)<li>[oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md)<li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)<li>[oidcIdentityProvider](../api/identitycontainer-post-identityproviders.md#oidcidentityprovider) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only)</li></ul>|
|[List available identity providers](../api/identityproviderbase-availableprovidertypes.md)|String collection|Retrieve all supported identity provider types in the tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the identity provider.|
|displayName|String|The display name of the identity provider.|

## JSON representation

The following JSON representation shows the resource type.
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityProviderBase"
} -->

```json
{
    "id": "String",
    "displayName": "String",
}
```
