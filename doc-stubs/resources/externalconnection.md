---
title: "externalConnection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalConnections](../api/externalconnection-list.md)|[externalConnection](../resources/externalconnection.md) collection|Get a list of the [externalConnection](../resources/externalconnection.md) objects and their properties.|
|[Create externalConnection](../api/externalconnection-create.md)|[externalConnection](../resources/externalconnection.md)|Create a new [externalConnection](../resources/externalconnection.md) object.|
|[Get externalConnection](../api/externalconnection-get.md)|[externalConnection](../resources/externalconnection.md)|Read the properties and relationships of an [externalConnection](../resources/externalconnection.md) object.|
|[Update externalConnection](../api/externalconnection-update.md)|[externalConnection](../resources/externalconnection.md)|Update the properties of an [externalConnection](../resources/externalconnection.md) object.|
|[Delete externalConnection](../api/externalconnection-delete.md)|None|Deletes an [externalConnection](../resources/externalconnection.md) object.|
|[List groups](../api/externalconnection-list-groups.md)|[externalGroup](../resources/externalgroup.md) collection|Get the externalGroup resources from the groups navigation property.|
|[Create externalGroup](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new externalGroup object.|
|[List items](../api/externalconnection-list-items.md)|[externalItem](../resources/externalitem.md) collection|Get the externalItem resources from the items navigation property.|
|[Create externalItem](../api/externalconnection-post-items.md)|[externalItem](../resources/externalitem.md)|Create a new externalItem object.|
|[List operations](../api/externalconnection-list-operations.md)|[connectionOperation](../resources/connectionoperation.md) collection|Get the connectionOperation resources from the operations navigation property.|
|[Create connectionOperation](../api/externalconnection-post-operations.md)|[connectionOperation](../resources/connectionoperation.md)|Create a new connectionOperation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[configuration](../resources/configuration.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|name|String|**TODO: Add Description**|
|state|connectionState|**TODO: Add Description**. The possible values are: `draft`, `ready`, `obsolete`, `limitExceeded`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groups|[externalGroup](../resources/externalgroup.md) collection|**TODO: Add Description**|
|items|[externalItem](../resources/externalitem.md) collection|**TODO: Add Description**|
|operations|[connectionOperation](../resources/connectionoperation.md) collection|**TODO: Add Description**|
|schema|[schema](../resources/schema.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnection",
  "id": "String (identifier)",
  "configuration": {
    "@odata.type": "microsoft.graph.configuration"
  },
  "description": "String",
  "name": "String",
  "state": "String"
}
```

