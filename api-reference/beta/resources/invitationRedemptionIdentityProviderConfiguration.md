---
title: "invitationRedemptionIdentityProviderConfiguration resource type"
description: "Defines the base type invitation redemption provider configuration base type to set redemption flow settings for Azure AD (Azure AD) B2B collaboration."
author: "anandyadav"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# invitationRedemptionIdentityProviderConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the base type invitation redemption provider configuration base type to set redemption flow settings for Azure AD (Azure AD) B2B collaboration.

## Properties


|Property|Type|Description|
|:---|:---|:---|
| primaryIdentityProviderPrecedenceOrder | b2bIdentityProvidersType Collection | Collection of identity providers in priority order of preference to be used for guest user invitation redemption |
| fallbackIdentityProvider | b2bIdentityProvidersType Collection | Collection of fallback identity providers to be used in case no primary identity provider can be used for guest user invitation redemption. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.invitationRedemptionIdentityProviderConfiguration"
}
-->

``` json
{
  "primaryIdentityProviderPrecedenceOrder": ["String"],
  "fallbackIdentityProvider": ["String"]
}
```
