---
title: "cloudFlareWebApplicationFirewallProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# cloudFlareWebApplicationFirewallProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudflarewebapplicationfirewallprovider-list.md)|[cloudFlareWebApplicationFirewallProvider](../resources/cloudflarewebapplicationfirewallprovider.md) collection|Get a list of the cloudFlareWebApplicationFirewallProvider objects and their properties.|
|[Get](../api/cloudflarewebapplicationfirewallprovider-get.md)|[cloudFlareWebApplicationFirewallProvider](../resources/cloudflarewebapplicationfirewallprovider.md)|Read the properties and relationships of [cloudFlareWebApplicationFirewallProvider](../resources/cloudflarewebapplicationfirewallprovider.md) object.|
|[Update](../api/cloudflarewebapplicationfirewallprovider-update.md)|[cloudFlareWebApplicationFirewallProvider](../resources/cloudflarewebapplicationfirewallprovider.md)|Update the properties of a cloudFlareWebApplicationFirewallProvider object.|
|[Delete](../api/cloudflarewebapplicationfirewallprovider-delete.md)|None|Delete a cloudFlareWebApplicationFirewallProvider object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|apiToken|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description** Inherited from [webApplicationFirewallProvider](../resources/webapplicationfirewallprovider.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|zoneId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "baseType": "microsoft.graph.webApplicationFirewallProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareWebApplicationFirewallProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "apiToken": "String",
  "zoneId": "String"
}
```

