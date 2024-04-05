---
title: "identityContainer resource type"
description: "Represents the entry point to different features in External Identities for both Microsoft Entra ID and Azure AD B2C tenants."
ms.localizationpriority: high
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# identityContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point to different features in [External Identities](/azure/active-directory/external-identities/) for both Microsoft Entra ID and Azure AD B2C tenants.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|apiConnectors|[identityApiConnector](identityApiConnector.md) collection|Represents entry point for API connectors.|
|authenticationEventListeners|[authenticationEventListener](authenticationeventlistener.md) collection| Represents listeners for custom authentication extension events in Azure AD for workforce and customers.|
|b2xUserFlows|[b2xIdentityUserFlow](b2xIdentityUserFlow.md) collection| Represents entry point for B2X/self-service sign-up identity userflows.|
|conditionalAccess|[conditionalAccessRoot](conditionalAccessRoot.md) collection| the entry point for the Conditional Access (CA) object model.|
|customAuthenticationExtensions|[customAuthenticationExtension](customauthenticationextension.md) collection| Represents custom extensions to authentication flows in Azure AD for workforce and customers.|
|identityProvider|[identityProviderBase](identityProviderBase.md) collection| Represents entry point for identity provider base.|
|userFlowAttributes|[identityUserFlowAttribute](identityUserFlowAttribute.md) collection| Represents entry point for identity userflow attributes.|

## JSON representation

Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityContainer",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.identityContainer"
}
```
