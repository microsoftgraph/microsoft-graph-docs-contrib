---
title: "dataSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# dataSource resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataSources](../api/datasource-list.md)|[dataSource](../resources/datasource.md) collection|Get a list of the [dataSource](../resources/datasource.md) objects and their properties.|
|[Create dataSource](../api/datasource-create.md)|[dataSource](../resources/datasource.md)|Create a new [dataSource](../resources/datasource.md) object.|
|[Get dataSource](../api/datasource-get.md)|[dataSource](../resources/datasource.md)|Read the properties and relationships of a [dataSource](../resources/datasource.md) object.|
|[Update dataSource](../api/datasource-update.md)|[dataSource](../resources/datasource.md)|Update the properties of a [dataSource](../resources/datasource.md) object.|
|[Delete dataSource](../api/datasource-delete.md)|None|Deletes a [dataSource](../resources/datasource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataSource",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)"
}
```

