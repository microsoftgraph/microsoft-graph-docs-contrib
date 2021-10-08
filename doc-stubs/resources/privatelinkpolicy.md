---
title: "privateLinkPolicy resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# privateLinkPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privateLinkPolicies](../api/privatelinkpolicy-list.md)|[privateLinkPolicy](../resources/privatelinkpolicy.md) collection|Get a list of the [privateLinkPolicy](../resources/privatelinkpolicy.md) objects and their properties.|
|[Create privateLinkPolicy](../api/privatelinkpolicy-create.md)|[privateLinkPolicy](../resources/privatelinkpolicy.md)|Create a new [privateLinkPolicy](../resources/privatelinkpolicy.md) object.|
|[Get privateLinkPolicy](../api/privatelinkpolicy-get.md)|[privateLinkPolicy](../resources/privatelinkpolicy.md)|Read the properties and relationships of a [privateLinkPolicy](../resources/privatelinkpolicy.md) object.|
|[Update privateLinkPolicy](../api/privatelinkpolicy-update.md)|[privateLinkPolicy](../resources/privatelinkpolicy.md)|Update the properties of a [privateLinkPolicy](../resources/privatelinkpolicy.md) object.|
|[Delete privateLinkPolicy](../api/privatelinkpolicy-delete.md)|None|Deletes a [privateLinkPolicy](../resources/privatelinkpolicy.md) object.|
|[List privateEndpointConnections](../api/privatelinkpolicy-list-privateendpointconnections.md)|[privateEndpointConnection](../resources/privateendpointconnection.md) collection|Get the privateEndpointConnection resources from the privateEndpointConnections navigation property.|
|[Create privateEndpointConnection](../api/privatelinkpolicy-post-privateendpointconnections.md)|[privateEndpointConnection](../resources/privateendpointconnection.md)|Create a new privateEndpointConnection object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowAllTenants|Boolean|**TODO: Add Description**|
|allowedTenantIds|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|externalPrivateLinkPolicyId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|privateEndpointConnections|[privateEndpointConnection](../resources/privateendpointconnection.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privateLinkPolicy",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privateLinkPolicy",
  "id": "String (identifier)",
  "externalPrivateLinkPolicyId": "String",
  "displayName": "String",
  "allowedTenantIds": [
    "String"
  ],
  "allowAllTenants": "Boolean"
}
```

