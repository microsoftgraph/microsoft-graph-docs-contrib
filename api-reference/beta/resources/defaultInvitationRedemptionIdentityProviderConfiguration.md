---
title: "defaultInvitationRedemptionIdentityProviderConfiguration resource type"
description: "Defines the invitation redemption provider configuration base type to set redemption flow settings for Azure AD (Azure AD) B2B collaboration."
author: "anandyadav"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# defaultInvitationRedemptionIdentityProviderConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the invitation redemption provider configuration base type to set redemption flow settings for Azure AD (Azure AD) B2B collaboration.

Inherits from [invitationRedemptionIdentityProviderConfiguration](../resources/invitationRedemptionIdentityProviderConfiguration.md)

## Properties

This type does not define any additional properties other than what it inherits from the base type.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.defaultInvitationRedemptionIdentityProviderConfiguration",
  "baseType": "microsoft.graph.invitationRedemptionIdentityProviderConfiguration"
}
-->

``` json
{
  "primaryIdentityProviderPrecedenceOrder": "String Collection",
  "fallbackIdentityProvider": "String Collection"
}
```
