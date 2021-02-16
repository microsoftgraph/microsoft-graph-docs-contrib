---
title: "dataSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSources](../api/datasource-list.md)|[dataSource](../resources/ediscovery-datasource.md) collection|Get a list of the [dataSource](../resources/datasource.md) objects and their properties.|
|[Create dataSource](../api/ediscovery-datasource-create.md)|[dataSource](../resources/ediscovery-datasource.md)|Create a new [dataSource](../resources/ediscovery-datasource.md) object.|
|[Get dataSource](../api/ediscovery-datasource-get.md)|[dataSource](../resources/ediscovery-datasource.md)|Read the properties and relationships of a [dataSource](../resources/ediscovery-datasource.md) object.|
|[Update dataSource](../api/ediscovery-datasource-update.md)|[dataSource](../resources/ediscovery-datasource.md)|Update the properties of a [dataSource](../resources/ediscovery-datasource.md) object.|
|[Delete dataSource](../api/ediscovery-datasource-delete.md)|None|Deletes a [dataSource](../resources/ediscovery-datasource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.dataSource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.dataSource",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

