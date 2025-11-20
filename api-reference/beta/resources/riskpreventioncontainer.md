---
title: "riskPreventionContainer resource type"
description: "Represents the entry point for risk prevention features in Microsoft Entra External ID."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# riskPreventionContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for risk prevention features in [Microsoft Entra External ID](/entra/external-id/external-identities-overview).

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fraudProtectionProviders|[fraudProtectionProvider](../resources/fraudprotectionprovider.md) collection|Represents entry point for fraud protection provider configurations for Microsoft Entra External ID tenants.|
|webApplicationFirewallProviders|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) collection|Collection of WAF provider configurations registered in the External ID tenant.|
|webApplicationFirewallVerifications|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) collection|Collection of verification operations performed for domains or hosts with WAF providers registered in the External ID tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskPreventionContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskPreventionContainer"
}
```

