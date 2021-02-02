---
title: "printService resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printService resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printServices](../api/printservice-list.md)|[printService](../resources/printservice.md) collection|Get a list of the [printService](../resources/printservice.md) objects and their properties.|
|[Create printService](../api/printservice-create.md)|[printService](../resources/printservice.md)|Create a new [printService](../resources/printservice.md) object.|
|[Get printService](../api/printservice-get.md)|[printService](../resources/printservice.md)|Read the properties and relationships of a [printService](../resources/printservice.md) object.|
|[Update printService](../api/printservice-update.md)|[printService](../resources/printservice.md)|Update the properties of a [printService](../resources/printservice.md) object.|
|[Delete printService](../api/printservice-delete.md)|None|Deletes a [printService](../resources/printservice.md) object.|
|[List endpoints](../api/printservice-list-endpoints.md)|[printServiceEndpoint](../resources/printserviceendpoint.md) collection|Get the printServiceEndpoint resources from the endpoints navigation property.|
|[Create printServiceEndpoint](../api/printservice-post-endpoints.md)|[printServiceEndpoint](../resources/printserviceendpoint.md)|Create a new printServiceEndpoint object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|endpoints|[printServiceEndpoint](../resources/printserviceendpoint.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printService",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printService",
  "id": "String (identifier)"
}
```

