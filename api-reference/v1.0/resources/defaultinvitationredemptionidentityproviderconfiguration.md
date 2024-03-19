---
title: "defaultInvitationRedemptionIdentityProviderConfiguration resource type"
description: "Defines the invitation redemption provider configuration to set redemption flow settings for Microsoft Entra ID B2B collaboration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# defaultInvitationRedemptionIdentityProviderConfiguration resource type

Namespace: microsoft.graph

Defines the invitation redemption provider configuration to set redemption flow settings for Microsoft Entra ID B2B collaboration.

Inherits from [invitationRedemptionIdentityProviderConfiguration](../resources/invitationRedemptionIdentityProviderConfiguration.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
| primaryIdentityProviderPrecedenceOrder | b2bIdentityProvidersType collection | Collection of identity providers in priority order of preference to be used for guest invitation redemption. Possible values are: `azureActiveDirectory`, `externalFederation`, or `socialIdentityProviders`. |
| fallbackIdentityProvider | b2bIdentityProvidersType | The fallback identity provider to be used in case no primary identity provider can be used for guest invitation redemption. Possible values are: `defaultConfiguredIdp`, `emailOneTimePasscode`, or `microsoftAccount`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.defaultInvitationRedemptionIdentityProviderConfiguration"
}
-->

``` json
{
  "primaryIdentityProviderPrecedenceOrder": ["String"],
  "fallbackIdentityProvider": "String"
}
```
