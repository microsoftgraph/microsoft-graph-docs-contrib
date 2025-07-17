---
title: "identityContainer resource type"
description: "Represents the entry point to different features in External Identities for both Microsoft Entra ID and Azure AD B2C tenants."
ms.localizationpriority: high
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "namkedia"
ms.date: 07/03/2025
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
|authenticationEventsFlows|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Represents the entry point for self-service sign-up and sign-in user flows in both Microsoft Entra workforce and external tenants.|
|authenticationEventListener|[authenticationEventListener](authenticationeventlistener.md) collection| Represents listeners for custom authentication extension events in Microsoft Entra ID for workforce and customers.|
|b2cUserFlows|[b2cIdentityUserFlow](b2cIdentityUserFlow.md) collection|Represents entry point for B2C identity userflows.|
|b2xUserFlows|[b2xIdentityUserFlow](b2xIdentityUserFlow.md) collection| Represents entry point for B2X and self-service sign-up identity userflows.|
|customAuthenticationExtension|[customAuthenticationExtension](customauthenticationextension.md) collection| Represents custom extensions to authentication flows in Microsoft Entra ID for workforce and customers.|
|identityProviders|[identityProviderBase](identityProviderBase.md) collection| Represents entry point for identity provider base.|
|userFlowAttributes|[identityUserFlowAttribute](identityUserFlowAttribute.md) collection| Represents entry point for identity userflow attributes.|
|conditionalAccess|[conditionalAccessRoot](conditionalAccessRoot.md) collection| the entry point for the Conditional Access (CA) object model.|
|continuousAccessEvaluationPolicy|[continuousAccessEvaluationPolicy](continuousAccessEvaluationPolicy.md)| Represents entry point for continuous access evaluation policy.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityContainer",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.identityContainer"
}
```
