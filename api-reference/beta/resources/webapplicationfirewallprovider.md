---
title: "webApplicationFirewallProvider resource type"
description: "Represents a web application firewall (WAF) provider configuration."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webApplicationFirewallProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a web application firewall (WAF) provider configuration. This abstract resource defines common properties for WAF providers integrated with Microsoft services.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/riskpreventioncontainer-list-webapplicationfirewallproviders.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) collection|Get a list of the webApplicationFirewallProvider objects and their properties.|
|[Create](../api/riskpreventioncontainer-post-webapplicationfirewallproviders.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Create a new webApplicationFirewallProvider object.|
|[Get](../api/webapplicationfirewallprovider-get.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Read the properties and relationships of [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md) object.|
|[Update](../api/webapplicationfirewallprovider-update.md)|[webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md)|Update the properties of a webApplicationFirewallProvider object.|
|[Delete](../api/riskpreventioncontainer-delete-webapplicationfirewallproviders.md)|None|Delete a webApplicationFirewallProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the WAF provider.|
|id|String|Unique identifier for the provider resource. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.webApplicationFirewallProvider",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallProvider",
  "id": "String (identifier)",
  "displayName": "String"
}
```

