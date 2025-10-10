---
title: "webApplicationFirewallVerificationModel resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# webApplicationFirewallVerificationModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskpreventioncontainer-list-webapplicationfirewallverifications.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) collection|Get a list of the webApplicationFirewallVerificationModel objects and their properties.|
|[Create](../api/riskpreventioncontainer-post-webapplicationfirewallverifications.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md)|Create a new webApplicationFirewallVerificationModel object.|
|[Get](../api/webapplicationfirewallverificationmodel-get.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md)|Read the properties and relationships of [webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md) object.|
|[Update](../api/webapplicationfirewallverificationmodel-update.md)|[webApplicationFirewallVerificationModel](../resources/webapplicationfirewallverificationmodel.md)|Update the properties of a webApplicationFirewallVerificationModel object.|
|[Delete](../api/riskpreventioncontainer-delete-webapplicationfirewallverifications.md)|None|Delete a webApplicationFirewallVerificationModel object.|
|[List webApplicationFirewallProvider](../api/webapplicationfirewallverificationmodel-list-provider.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) collection|**TODO: Add a useful description.**|
|[Add webApplicationFirewallProvider](../api/webapplicationfirewallverificationmodel-post-provider.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Add provider by posting to the provider collection.|
|[Remove webApplicationFirewallProvider](../api/webapplicationfirewallverificationmodel-delete-provider.md)|None|Remove a [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|providerType|webApplicationFirewallProviderType|**TODO: Add Description**. The possible values are: `akamai`, `cloudflare`, `unknownFutureValue`.|
|verificationResult|[webApplicationFirewallVerificationResult](../resources/webapplicationfirewallverificationresult.md)|**TODO: Add Description**|
|verifiedDetails|[webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md)|**TODO: Add Description**|
|verifiedHost|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|provider|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|**TODO: Add Description**|

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

