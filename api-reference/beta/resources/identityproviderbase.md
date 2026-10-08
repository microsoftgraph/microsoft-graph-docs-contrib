---
title: "identityProviderBase resource type"
description: "Represents identity providers in a Microsoft Entra tenant and an Azure AD B2C tenant."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "brozbab"
toc.title: "External Identities identity provider"
ms.date: 11/16/2024
---

# identityProviderBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents identity providers for both Microsoft Entra and Azure AD B2C tenants.

Configuring an identity provider in your workforce tenant enables new B2B guest scenarios. For example, an organization has resources in Microsoft 365 that need to be shared with a Gmail user. The Gmail user will use their Google account credentials to authenticate and access the documents.

Configuring an identity provider in your external or Azure AD B2C tenant enables users to sign up and sign in using a social account or a custom OpenID Connect supported provider in an application. For example, an application can use Entra External ID or Azure AD B2C to allow users to sign up for the service using a Facebook account or their own custom identity provider that complies with OIDC protocol (Open ID Connect is currently supported only with external tenants and Azure AD B2C).

| Supported  IdPs (types derived from identityProviderBase)                      | External tenant     | Workforce tenant    | Azure AD B2C tenant |
|--------------------------------------------------------------------------------|---------------------|---------------------|---------------------|
| [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md)   | ![Supported][Yes]   | ![NotSupported][No] | ![Supported][Yes]   |
| [builtInIdentityProvider](../resources/builtinidentityprovider.md)             | ![Supported][Yes]   | ![Supported][Yes]   | ![Supported][Yes]   |
| [socialIdentityProvider](../resources/socialidentityprovider.md)               | ![Supported][Yes]   | ![Supported][Yes]   | ![Supported][Yes]   |
| [oidcIdentityProvider](../resources/oidcidentityprovider.md)                   | ![Supported][Yes]   | ![NotSupported][No] | ![NotSupported][No] |
| [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) | ![NotSupported][No] | ![NotSupported][No] | ![Supported][Yes]   |

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List configured identity providers](../api/identitycontainer-list-identityproviders.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all identity providers configured in a tenant.|
|[Create](../api/identitycontainer-post-identityproviders.md)| [socialidentityprovider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [oidcIdentityProvider](../resources/oidcidentityprovider.md) or [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) |Create a new object of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) </li><li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)</li><li>[oidcIdentityProvider](../resources/oidcidentityprovider.md) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Get](../api/identityproviderbase-get.md) |[socialidentityprovider](../resources/socialidentityprovider.md), [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md), [builtInIdentityProvider](../resources/builtinidentityprovider.md), [oidcIdentityProvider](../resources/oidcidentityprovider.md) or [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) | Retrieve properties of one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) </li><li> [appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant) </li><li> [builtInIdentityProvider](../resources/builtinidentityprovider.md)</li><li>[oidcIdentityProvider](../resources/oidcidentityprovider.md) (External tenant only)</li> <li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Update](../api/identityproviderbase-update.md)|None|Update one of the following object types: <ul><li> [socialidentityprovider](../resources/socialidentityprovider.md) </li><li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)</li><li>[oidcIdentityProvider](../resources/oidcidentityprovider.md) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only) </li></ul>|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete one of the following object types: <br/><ul><li> [socialidentityprovider](../resources/socialidentityprovider.md)</li><li>[appleManagedIdentityProvider](../resources/applemanagedidentityprovider.md) (External or Azure AD B2C tenant)</li><li>[oidcIdentityProvider](../resources/oidcidentityprovider.md) (External tenant only)</li><li> [openIdConnectIdentityProvider](../resources/openidconnectidentityprovider.md) (Azure AD B2C tenant only)</li></ul>|
|[List available identity providers](../api/identityproviderbase-availableprovidertypes.md)|String collection|Retrieve all supported identity provider types in the tenant.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the identity provider.|
|displayName|String|The display name of the identity provider.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

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


[Yes]: /graph/images/yesandnosymbols/greencheck.svg
[No]: /graph/images/yesandnosymbols/no.svg