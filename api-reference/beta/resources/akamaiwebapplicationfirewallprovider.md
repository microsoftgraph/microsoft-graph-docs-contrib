---
title: "akamaiWebApplicationFirewallProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# akamaiWebApplicationFirewallProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/akamaiwebapplicationfirewallprovider-list.md)|[akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md) collection|Get a list of the akamaiWebApplicationFirewallProvider objects and their properties.|
|[Get](../api/akamaiwebapplicationfirewallprovider-get.md)|[akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md)|Read the properties and relationships of [akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md) object.|
|[Update](../api/akamaiwebapplicationfirewallprovider-update.md)|[akamaiWebApplicationFirewallProvider](../resources/akamaiwebapplicationfirewallprovider.md)|Update the properties of an akamaiWebApplicationFirewallProvider object.|
|[Delete](../api/akamaiwebapplicationfirewallprovider-delete.md)|None|Delete an akamaiWebApplicationFirewallProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessToken|String|**TODO: Add Description**|
|clientSecret|String|**TODO: Add Description**|
|clientToken|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).|
|hostPrefix|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.akamaiWebApplicationFirewallProvider",
  "baseType": "microsoft.graph.webApplicationFirewallProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiWebApplicationFirewallProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "hostPrefix": "String",
  "clientSecret": "String",
  "clientToken": "String",
  "accessToken": "String"
}
```

