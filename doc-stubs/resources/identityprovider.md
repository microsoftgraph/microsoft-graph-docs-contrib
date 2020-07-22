---
title: "identityProvider resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# identityProvider resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityProviders](../api/identityprovider-list.md)|[identityProvider](../resources/identityprovider.md) collection|Get a list of the [identityProvider](../resources/identityprovider.md) objects and their properties.|
|[Create identityProvider](../api/identityprovider-post-identityproviders.md)|[identityProvider](../resources/identityprovider.md)|Create a new [identityProvider](../resources/identityprovider.md) object.|
|[Get identityProvider](../api/identityprovider-get.md)|[identityProvider](../resources/identityprovider.md)|Read the properties and relationships of an [identityProvider](../resources/identityprovider.md) object.|
|[Update identityProvider](../api/identityprovider-update.md)|[identityProvider](../resources/identityprovider.md)|Update the properties of an [identityProvider](../resources/identityprovider.md) object.|
|[Delete identityProvider](../api/identityprovider-delete.md)|None|Deletes an [identityProvider](../resources/identityprovider.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientId|String|**TODO: Add Description**|
|clientSecret|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|name|String|**TODO: Add Description**|
|type|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityProvider",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityProvider",
  "id": "String (identifier)",
  "type": "String",
  "name": "String",
  "clientId": "String",
  "clientSecret": "String"
}
```

