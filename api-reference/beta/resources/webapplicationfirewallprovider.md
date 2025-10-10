---
title: "webApplicationFirewallProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# webApplicationFirewallProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


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
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

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

