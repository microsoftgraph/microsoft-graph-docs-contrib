---
title: "identityContainer resource type"
description: "Represents the entry point to different features in External Identities for both Azure Active Directory (Azure AD) and Azure AD B2C tenants."
ms.localizationpriority: high
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
|apiConnectors|[identityApiConnector](identityApiConnector.md) collection|Represents entry point for API connectors.|
|b2cUserFlows|[b2cIdentityUserFlow](b2cIdentityUserFlow.md) collection|Represents entry point for B2C identity userflows.|
|b2xUserFlows|[b2xIdentityUserFlow](b2xIdentityUserFlow.md) collection| Represents entry point for B2X and self-service sign-up identity userflows.|
|identityProviders|[identityProviderBase](identityProviderBase.md) collection| Represents entry point for identity provider base.|
|userFlowAttributes|[identityUserFlowAttribute](identityUserFlowAttribute.md) collection| Represents entry point for identity userflow attributes.|
|continuousAccessEvaluationPolicy|[continuousAccessEvaluationPolicy](continuousAccessEvaluationPolicy.md)| Represents entry point for continuous access evaluation policy.|

## JSON representation

The following is a JSON representation of the resource.
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
