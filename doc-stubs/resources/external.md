---
title: "external resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# external resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externals](../api/external-list.md)|[external](../resources/external.md) collection|Get a list of the [external](../resources/external.md) objects and their properties.|
|[Create external](../api/external-create.md)|[external](../resources/external.md)|Create a new [external](../resources/external.md) object.|
|[Get external](../api/external-get.md)|[external](../resources/external.md)|Read the properties and relationships of an [external](../resources/external.md) object.|
|[Update external](../api/external-update.md)|[external](../resources/external.md)|Update the properties of an [external](../resources/external.md) object.|
|[Delete external](../api/external-delete.md)|None|Deletes an [external](../resources/external.md) object.|
|[List connections](../api/external-list-connections.md)|[externalConnection](../resources/externalconnection.md) collection|Get the externalConnection resources from the connections navigation property.|
|[Create externalConnection](../api/external-post-connections.md)|[externalConnection](../resources/externalconnection.md)|Create a new externalConnection object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connections|[externalConnection](../resources/externalconnection.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.external",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.external",
  "id": "String (identifier)"
}
```

