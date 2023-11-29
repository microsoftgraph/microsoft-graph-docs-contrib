---
title: "invitationRedemptionIdentityProviderConfiguration resource type"
description: "Defines the invitation redemption provider configuration base type to set redemption flow settings for Microsoft Entra ID B2B collaboration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# invitationRedemptionIdentityProviderConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the invitation redemption provider configuration base type to set redemption flow settings for Microsoft Entra ID B2B collaboration.

There are two types of identity providers in the precedence order. These are primary identity providers and fallback identity providers. Fallback identity providers are used when no primary identity provider is available and must always be specified.

Primary identity providers:

- azureActiveDirectory: Any user homed in another Microsoft Entra ID tenant
- externalFederation: Any user homed in an identity provider associated with a SAML or WS-Federation relationship
- socialIdentityProviders: Any user using a gmail.com account when Google Federation is configured

Fallback identity providers:

- defaultConfiguredIdp: Check for existing Microsoft account, then use email one-time passcode (if enabled), and lastly, create a new Microsoft account if no primary identity providers are available for the user redeeming
- emailOneTimePasscode: Always use email one-time passcode if no primary identity providers are available for the user redeeming
- microsoftAccount: Always use an existing Microsoft account or create a new Microsoft account if no primary identity providers are available for the user redeeming

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
  "@odata.type": "microsoft.graph.invitationRedemptionIdentityProviderConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.invitationRedemptionIdentityProviderConfiguration",
  "primaryIdentityProviderPrecedenceOrder": [
    "String"
  ],
  "fallbackIdentityProvider": "String"
}
```
