---
title: "webApplicationFirewallVerificationModel resource type"
description: "Represents a verification operation and result for a domain managed by a web application firewall (WAF) provider."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webApplicationFirewallVerificationModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a verification operation and result for a domain managed by a [web application firewall (WAF) provider](../resources/webapplicationfirewallprovider.md).


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskpreventioncontainer-list-webapplicationfirewallverifications.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) collection|Get a list of the webApplicationFirewallVerificationModel objects and their properties.|
|[Get](../api/webapplicationfirewallverificationmodel-get.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md)|Read the properties and relationships of [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object.|
|[Delete](../api/riskpreventioncontainer-delete-webapplicationfirewallverifications.md)|None|Delete a webApplicationFirewallVerificationModel object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the verification model. Inherited from [entity](../resources/entity.md).|
|providerType|webApplicationFirewallProviderType|Specifies the type of WAF provider used for the verification. The possible values are: `akamai`, `cloudflare`, `unknownFutureValue`.|
|verificationResult|[webApplicationFirewallVerificationResult](../resources/webapplicationfirewallverificationresult.md)|An object describing the outcome of the verification operation, including status, errors or warnings|
|verifiedDetails|[webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md)|Details of DNS configuration|
|verifiedHost|String|The host (domain or subdomain) that was verified as part of this verification operation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|provider|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Reference to a provider resource associated with this verification model. Represents a WAF provider that can be used to verify or manage the host.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.webApplicationFirewallVerificationModel",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationModel",
  "id": "String (identifier)",
  "verifiedHost": "String",
  "providerType": "String",
  "verificationResult": {
    "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
  },
  "verifiedDetails": {
    "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
  }
}
```

