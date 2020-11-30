---
title: "commsOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# commsOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List commsOperations](../api/commsoperation-list.md)|[commsOperation](../resources/commsoperation.md) collection|Get a list of the [commsOperation](../resources/commsoperation.md) objects and their properties.|
|[Create commsOperation](../api/commsoperation-create.md)|[commsOperation](../resources/commsoperation.md)|Create a new [commsOperation](../resources/commsoperation.md) object.|
|[Get commsOperation](../api/commsoperation-get.md)|[commsOperation](../resources/commsoperation.md)|Read the properties and relationships of a [commsOperation](../resources/commsoperation.md) object.|
|[Update commsOperation](../api/commsoperation-update.md)|[commsOperation](../resources/commsoperation.md)|Update the properties of a [commsOperation](../resources/commsoperation.md) object.|
|[Delete commsOperation](../api/commsoperation-delete.md)|None|Deletes a [commsOperation](../resources/commsoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientContext|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|resultInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|status|operationStatus|**TODO: Add Description**. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.commsOperation",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.commsOperation",
  "id": "String (identifier)",
  "status": "String",
  "clientContext": "String",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```

