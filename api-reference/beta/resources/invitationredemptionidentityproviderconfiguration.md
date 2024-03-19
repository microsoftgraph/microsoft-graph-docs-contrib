---
title: "invitationRedemptionIdentityProviderConfiguration resource type"
description: "Defines the invitation redemption provider configuration base type to set redemption flow settings for Microsoft Entra ID B2B collaboration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# invitationRedemptionIdentityProviderConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the invitation redemption provider configuration base type to set redemption flow settings for Microsoft Entra ID B2B collaboration.

Two types of identity providers are in the precedence order: primary identity providers and fallback identity providers. Fallback identity providers are used when no primary identity provider is available and must always be specified.

The primary identity providers are:

- azureActiveDirectory: Any user located in another Microsoft Entra ID tenant.
- externalFederation: Any user located in an identity provider associated with a SAML or WS-Federation relationship.
- socialIdentityProviders: Any user using a gmail.com account when Google Federation is configured.

The fallback identity providers are:

- defaultConfiguredIdp: Check for an existing Microsoft account, then use a one-time email passcode (if enabled), and finally, create a new Microsoft account if no primary identity providers are available for the user.
- emailOneTimePasscode: Always use one-time email passcode if no primary identity providers are available for the user.
- microsoftAccount: Always use an existing Microsoft account or create a new Microsoft account if no primary identity providers are available for the user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| primaryIdentityProviderPrecedenceOrder | b2bIdentityProvidersType collection | Collection of identity providers in priority order of preference to be used for guest invitation redemption. Possible values are: `azureActiveDirectory`, `externalFederation`, or `socialIdentityProviders`. |
| fallbackIdentityProvider | b2bIdentityProvidersType | The fallback identity provider to be used in case no primary identity provider can be used for guest invitation redemption. Possible values are: `defaultConfiguredIdp`, `emailOneTimePasscode`, or `microsoftAccount`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
