---
title: "dataSourceContainer resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSourceContainer resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSourceContainers](../api/datasourcecontainer-list.md)|[dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) collection|Get a list of the [dataSourceContainer](../resources/datasourcecontainer.md) objects and their properties.|
|[Create dataSourceContainer](../api/ediscovery-datasourcecontainer-create.md)|[dataSourceContainer](../resources/ediscovery-datasourcecontainer.md)|Create a new [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.|
|[Get dataSourceContainer](../api/ediscovery-datasourcecontainer-get.md)|[dataSourceContainer](../resources/ediscovery-datasourcecontainer.md)|Read the properties and relationships of a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.|
|[Update dataSourceContainer](../api/ediscovery-datasourcecontainer-update.md)|[dataSourceContainer](../resources/ediscovery-datasourcecontainer.md)|Update the properties of a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.|
|[Delete dataSourceContainer](../api/ediscovery-datasourcecontainer-delete.md)|None|Deletes a [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md) object.|
|[List caseIndexOperation](../api/ediscovery-datasourcecontainer-list-lastindexoperation.md)|[caseIndexOperation](../resources/ediscovery-caseindexoperation.md) collection|Get the caseIndexOperation resources from the lastIndexOperation navigation property.|
|[Add caseIndexOperation](../api/ediscovery-datasourcecontainer-post-lastindexoperation.md)|[caseIndexOperation](../resources/ediscovery-caseindexoperation.md)|Add lastIndexOperation by posting to the lastIndexOperation collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|releasedDateTime|DateTimeOffset|**TODO: Add Description**|
|status|dataSourceContainerStatus|**TODO: Add Description**. Possible values are: `Active`, `Released`, `UnknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|lastIndexOperation|[caseIndexOperation](../resources/ediscovery-caseindexoperation.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.dataSourceContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.dataSourceContainer",
  "id": "String (identifier)",
  "status": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

