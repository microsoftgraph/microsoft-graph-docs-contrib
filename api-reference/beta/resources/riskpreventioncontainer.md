---
title: "riskPreventionContainer resource type"
description: "Represents the entry point for risk prevention features in External Identities."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: high
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# riskPreventionContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entry point for risk prevention features in [External Identities](/azure/active-directory/external-identities/) for Microsoft Entra External ID tenants.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-identitycontainer-list-riskprevention.md)|[riskPreventionContainer](../resources/riskpreventioncontainer.md) collection|Get a list of the riskPreventionContainer objects and their properties.|
|[Create](../api/security-identitycontainer-post-riskprevention.md)|[riskPreventionContainer](../resources/riskpreventioncontainer.md)|Create a new riskPreventionContainer object.|
|[Get](../api/riskpreventioncontainer-get.md)|[riskPreventionContainer](../resources/riskpreventioncontainer.md)|Read the properties and relationships of [riskPreventionContainer](../resources/riskpreventioncontainer.md) object.|
|[Update](../api/riskpreventioncontainer-update.md)|[riskPreventionContainer](../resources/riskpreventioncontainer.md)|Update the properties of a riskPreventionContainer object.|
|[Delete](../api/security-identitycontainer-delete-riskprevention.md)|None|Delete a riskPreventionContainer object.|
|[List webApplicationFirewallProviders](../api/riskpreventioncontainer-list-webapplicationfirewallproviders.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) collection|List web application firewall provider configurations that are registered under this container.|
|[Create webApplicationFirewallProvider](../api/riskpreventioncontainer-post-webapplicationfirewallproviders.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Create a new webApplicationFirewallProvider object.|
|[List webApplicationFirewallVerifications](../api/riskpreventioncontainer-list-webapplicationfirewallverifications.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) collection|List verification records (for example domain verification attempts and results) associated with WAF providers in this container.|
|[Create webApplicationFirewallVerificationModel](../api/riskpreventioncontainer-post-webapplicationfirewallverifications.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md)|Create a new webApplicationFirewallVerificationModel object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|fraudProtectionProviders|[fraudProtectionProvider](../resources/fraudprotectionprovider.md) collection|Represents entry point for fraud protection provider configurations for Microsoft Entra External ID tenants.|
|webApplicationFirewallProviders|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) collection|Collection of WAF provider configurations registered in this container.|
|webApplicationFirewallVerifications|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) collection|Collection of verification records documenting verification operations performed for domains or hosts with WAF providers.|

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

