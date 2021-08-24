---
title: "identityContainer resource type"
description: "identityContainer resource"
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "namkedia"
---

# identityContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This represents the type for entry point to different features in the [External Identities](/azure/active-directory/external-identities/) for both Azure Active Directory tenant and an Azure AD B2C tenant.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|conditionalAccess|[conditionalaccessroot](conditionalaccessroot.md)|It is the entry point for the Conditional Access object model|
|apiConnectors|[Collection of apiConnectors](identityApiConnector.md)|Represents entry point for API connectors.|
|b2xUserFlows|[Collection of b2xIdentityUserFlow](b2xIdentityUserFlow.md)| Represents entry point for B2X/self-service sign-up identity userflows.|
|identityProvider|[Collection of identityProviderBase](identityProviderBase.md)| Represents entry point for identity provider base.|
|userFlowAttributes|[Collection of identityUserFlowAttribute](identityUserFlowAttribute.md)| Represents entry point for identity userflow attributes.|

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
