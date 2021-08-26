---
title: "identityContainer resource type"
description: "Represents the entry point to different features in External Identities for both Azure Active Directory (Azure AD) and Azure AD B2C tenants."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# identityContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point to different features in [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory (Azure AD) and Azure AD B2C tenants.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|conditionalAccess|[conditionalaccessroot](conditionalaccessroot.md)|It is the entry point for the conditional access object model.|
|apiConnectors|[apiConnectors](identityApiConnector.md) collection|Represents entry point for API connectors.|
|b2cUserFlows|[b2cIdentityUserFlow](b2cIdentityUserFlow.md) collection|Represents entry point for B2C identity userflows.|
|b2xUserFlows|[b2xIdentityUserFlow](b2xIdentityUserFlow.md) collection| Represents entry point for B2X and self-service sign-up identity userflows.|
|identityProviders|[identityProviderBase](identityProviderBase.md) collection| Represents entry point for identity provider base.|
|userFlowAttributes|[identityUserFlowAttribute](identityUserFlowAttribute.md) collection| Represents entry point for identity userflow attributes.|
|userFlows|[identityUserFlow](identityUserFlow.md) collection| Represents entry point for identity userflows.|
|continuousAccessEvaluationPolicy|[continuousAccessEvaluationPolicy](continuousAccessEvaluationPolicy.md)| Represents entry point for continuous access evaluation policy.|

## JSON representation

None.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-08-24 00:00:00 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identityContainer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
