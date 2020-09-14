---
title: "externalConnection resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalConnection resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalConnections](../api/externalconnection-list.md)|[externalConnection](../resources/externalconnection.md) collection|Get a list of the [externalConnection](../resources/externalconnection.md) objects and their properties.|
|[Create externalConnection](../api/externalconnection-post-connections.md)|[externalConnection](../resources/externalconnection.md)|Create a new [externalConnection](../resources/externalconnection.md) object.|
|[Get externalConnection](../api/externalconnection-get.md)|[externalConnection](../resources/externalconnection.md)|Read the properties and relationships of an [externalConnection](../resources/externalconnection.md) object.|
|[Update externalConnection](../api/externalconnection-update.md)|[externalConnection](../resources/externalconnection.md)|Update the properties of an [externalConnection](../resources/externalconnection.md) object.|
|[Delete externalConnection](../api/externalconnection-delete.md)|None|Deletes an [externalConnection](../resources/externalconnection.md) object.|
|[List groups](../api/externalconnection-list-groups.md)|[externalGroup](../resources/externalgroup.md) collection|Get the externalGroup resources from the groups navigation property.|
|[Create groups](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new externalGroup object.|
|[Get groups](../api/externalconnection-get-externalgroup.md)|[externalGroup](../resources/externalgroup.md)|Read the properties and relationships of an [externalGroup](../resources/externalgroup.md) object.|
|[Update groups](../api/externalconnection-update-groups.md)|[externalGroup](../resources/externalgroup.md)|Update the properties of a groups object.|
|[Delete groups](../api/externalconnection-delete-groups.md)|None|Delete an [externalGroup](../resources/externalgroup.md) object.|
|[List items](../api/externalconnection-list-items.md)|[externalItem](../resources/externalitem.md) collection|Get the externalItem resources from the items navigation property.|
|[Create items](../api/externalconnection-post-items.md)|[externalItem](../resources/externalitem.md)|Create a new externalItem object.|
|[Get items](../api/externalconnection-get-externalitem.md)|[externalItem](../resources/externalitem.md)|Read the properties and relationships of an [externalItem](../resources/externalitem.md) object.|
|[Update items](../api/externalconnection-update-items.md)|[externalItem](../resources/externalitem.md)|Update the properties of an items object.|
|[Delete items](../api/externalconnection-delete-items.md)|None|Delete an [externalItem](../resources/externalitem.md) object.|
|[List operations](../api/externalconnection-list-operations.md)|[connectionOperation](../resources/connectionoperation.md) collection|Get the connectionOperation resources from the operations navigation property.|
|[Create operations](../api/externalconnection-post-operations.md)|[connectionOperation](../resources/connectionoperation.md)|Create a new connectionOperation object.|
|[Get operations](../api/externalconnection-get-connectionoperation.md)|[connectionOperation](../resources/connectionoperation.md)|Read the properties and relationships of a [connectionOperation](../resources/connectionoperation.md) object.|
|[Update operations](../api/externalconnection-update-operations.md)|[connectionOperation](../resources/connectionoperation.md)|Update the properties of an operations object.|
|[Delete operations](../api/externalconnection-delete-operations.md)|None|Delete a [connectionOperation](../resources/connectionoperation.md) object.|
|[List schema](../api/externalconnection-list-schema.md)|[schema](../resources/schema.md) collection|Get the schema resources from the schema navigation property.|
|[Create schema](../api/externalconnection-post-schema.md)|[schema](../resources/schema.md)|Create a new schema object.|
|[Get schema](../api/externalconnection-get-schema.md)|[schema](../resources/schema.md)|Read the properties and relationships of a [schema](../resources/schema.md) object.|
|[Update schema](../api/externalconnection-update-schema.md)|[schema](../resources/schema.md)|Update the properties of a schema object.|
|[Delete schema](../api/externalconnection-delete-schema.md)|None|Delete a [schema](../resources/schema.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuration|[configuration](../resources/configuration.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|
|state|connectionState|**TODO: Add Description**. Possible values are: `draft`, `ready`, `obsolete`, `limitExceeded`, `unknownFutureValue`.|

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
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnection",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "configuration": {
    "@odata.type": "microsoft.graph.configuration"
  },
  "state": "String"
}
```

