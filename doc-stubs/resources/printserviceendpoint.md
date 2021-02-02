---
title: "printServiceEndpoint resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printServiceEndpoint resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printServiceEndpoints](../api/printserviceendpoint-list.md)|[printServiceEndpoint](../resources/printserviceendpoint.md) collection|Get a list of the [printServiceEndpoint](../resources/printserviceendpoint.md) objects and their properties.|
|[Create printServiceEndpoint](../api/printserviceendpoint-create.md)|[printServiceEndpoint](../resources/printserviceendpoint.md)|Create a new [printServiceEndpoint](../resources/printserviceendpoint.md) object.|
|[Get printServiceEndpoint](../api/printserviceendpoint-get.md)|[printServiceEndpoint](../resources/printserviceendpoint.md)|Read the properties and relationships of a [printServiceEndpoint](../resources/printserviceendpoint.md) object.|
|[Update printServiceEndpoint](../api/printserviceendpoint-update.md)|[printServiceEndpoint](../resources/printserviceendpoint.md)|Update the properties of a [printServiceEndpoint](../resources/printserviceendpoint.md) object.|
|[Delete printServiceEndpoint](../api/printserviceendpoint-delete.md)|None|Deletes a [printServiceEndpoint](../resources/printserviceendpoint.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|uri|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printServiceEndpoint",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printServiceEndpoint",
  "id": "String (identifier)",
  "displayName": "String",
  "uri": "String"
}
```

