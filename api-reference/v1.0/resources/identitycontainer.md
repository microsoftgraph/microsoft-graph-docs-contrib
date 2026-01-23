---
title: "identityContainer resource type"
description: "Represents the entry point to different features in External Identities for both Microsoft Entra ID and Azure AD B2C tenants."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
ms.date: 05/16/2024
---

# identityContainer resource type

Namespace: microsoft.graph

Represents the entry point to different features in [External Identities](/azure/active-directory/external-identities/) for both Microsoft Entra ID and Azure AD B2C tenants.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|apiConnectors|[identityApiConnector](identityApiConnector.md) collection|Represents entry point for API connectors.|
|authenticationEventsFlows|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Represents the entry point for self-service sign-up and sign-in user flows in both Microsoft Entra workforce and external tenants.|
|authenticationEventListeners|[authenticationEventListener](authenticationeventlistener.md) collection| Represents listeners for custom authentication extension events in Azure AD for workforce and customers.|
|b2xUserFlows|[b2xIdentityUserFlow](b2xIdentityUserFlow.md) collection| Represents entry point for B2X/self-service sign-up identity userflows.|
|conditionalAccess|[conditionalAccessRoot](conditionalAccessRoot.md) collection| the entry point for the Conditional Access (CA) object model.|
|customAuthenticationExtensions|[customAuthenticationExtension](customauthenticationextension.md) collection| Represents custom extensions to authentication flows in Azure AD for workforce and customers.|
|identityProvider|[identityProviderBase](identityProviderBase.md) collection| Represents entry point for identity provider base.|
|userFlowAttributes|[identityUserFlowAttribute](identityUserFlowAttribute.md) collection| Represents entry point for identity userflow attributes.|
|riskPrevention|[riskPreventionContainer](../resources/riskpreventioncontainer.md)|Represents the entry point for fraud and risk prevention configurations in Microsoft Entra External ID, including third-party provider settings.|

## JSON representation

The following JSON representation shows the resource type.
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
