---
title: "builtInIdentityProvider resource type"
description: "Represents built in identity providers in an Azure Active Directory tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "namkedia"
---

# builtInIdentityProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents built in identity providers with [External Identities](/azure/active-directory/external-identities/) for Azure Active Directory tenant.

For Azure AD B2B scenarios in an Azure AD tenant, the built in identity provider type can be Microsoft Account or Email One Time Passcode.

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
|id|String|The ID of the identity provider.|
|displayName|String|The display name of the identity provider.|
|identityProviderType|String|The identity provider type is a required field.<ul>For B2B scenario:<li/>Microsoft Account<li/>EmailOTP</ul>|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.builtInIdentityProvider"
} -->

```json
{
    "id": "String",
    "identityProviderType": "String",
    "displayName": "String",
}
```