---
title: "printOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printOperations](../api/printoperation-list.md)|[printOperation](../resources/printoperation.md) collection|Get a list of the [printOperation](../resources/printoperation.md) objects and their properties.|
|[Create printOperation](../api/printoperation-create.md)|[printOperation](../resources/printoperation.md)|Create a new [printOperation](../resources/printoperation.md) object.|
|[Get printOperation](../api/printoperation-get.md)|[printOperation](../resources/printoperation.md)|Read the properties and relationships of a [printOperation](../resources/printoperation.md) object.|
|[Update printOperation](../api/printoperation-update.md)|[printOperation](../resources/printoperation.md)|Update the properties of a [printOperation](../resources/printoperation.md) object.|
|[Delete printOperation](../api/printoperation-delete.md)|None|Deletes a [printOperation](../resources/printoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|status|[printOperationStatus](../resources/printoperationstatus.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printOperation",
  "id": "String (identifier)",
  "status": {
    "@odata.type": "microsoft.graph.printOperationStatus"
  },
  "createdDateTime": "String (timestamp)"
}
```

