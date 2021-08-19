---
title: "samlOrWsFedExternalDomainFederation resource type"
description: "Represents SAML/Ws-Fed based identity providers in an Azure Active Directory tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# samlOrWsFedExternalDomainFederation resource type
Namespace: microsoft.graph

Represents SAML/Ws-Fed based identity providers with [External Identities](/azure/active-directory/external-identities/) for an Azure Active Directory (Azure AD) tenant.

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityproviderbase-list.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Retrieve all SAML/Ws-Fed based identity provider configured in a tenant.|
|[Create](../api/identityproviderbase-post-identityproviders.md)|socialidentityprovider |Create a new SAML/Ws-Fed based identity provider.|
|[Get](../api/identityproviderbase-get.md) |socialidentityprovider |Retrieve properties of a SAML/Ws-Fed based identity provider.|
|[Update](../api/identityproviderbase-update.md)|None|Update a SAML/Ws-Fed based identity provider.|
|[Delete](../api/identityproviderbase-delete.md)|None|Delete a SAML/Ws-Fed based identity provider.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier for the client application obtained when registering the application with the identity provider. Required.|
|clientSecret|String|The client secret for the application that is obtained when the application is registered with the identity provider. This is write-only. A read operation returns `****`. Required.|
|id|String|The identifier of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md). Read-only.|
|displayName|String|The display name of the identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|identityProviderType|String|For a B2B scenario, possible values: `Google`, `Facebook`. For a B2C scenario, possible values: `Microsoft`, `Google`, `Amazon`, `LinkedIn`, `Facebook`, `GitHub`, `Twitter`, `Weibo`, `QQ`, `WeChat`. Required.|

### Where to get the client identifier and secret

Each identity provider has a process for creating an app registration. For example, users create an app registration with Facebook at [developers.facebook.com](https://developers.facebook.com/). The resulting client identifier and client secret can be passed to [create identityProvider](../api/identityproviderbase-post-identityproviders.md). Then, each user object in the directory can be federated to any of the tenant's identity providers for authentication. This enables the user to sign in by entering credentials on the identity provider's sign-in page. The token from the identity provider is validated by Azure AD before the tenant issues a token to the application.

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
