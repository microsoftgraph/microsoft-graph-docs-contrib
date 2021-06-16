---
title: "connectionOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# connectionOperation resource type

Namespace: microsoft.graph.externalConnectors



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List connectionOperations](../api/connectionoperation-list.md)|[connectionOperation](../resources/externalconnectors-connectionoperation.md) collection|Get a list of the [connectionOperation](../resources/connectionoperation.md) objects and their properties.|
|[Create connectionOperation](../api/externalconnectors-connectionoperation-create.md)|[connectionOperation](../resources/externalconnectors-connectionoperation.md)|Create a new [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.|
|[Get connectionOperation](../api/externalconnectors-connectionoperation-get.md)|[connectionOperation](../resources/externalconnectors-connectionoperation.md)|Read the properties and relationships of a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.|
|[Update connectionOperation](../api/externalconnectors-connectionoperation-update.md)|[connectionOperation](../resources/externalconnectors-connectionoperation.md)|Update the properties of a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.|
|[Delete connectionOperation](../api/externalconnectors-connectionoperation-delete.md)|None|Deletes a [connectionOperation](../resources/externalconnectors-connectionoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/externalconnectors-publicerror.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|status|connectionOperationStatus|**TODO: Add Description**. Possible values are: `unspecified`, `inprogress`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.connectionOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.connectionOperation",
  "id": "String (identifier)",
  "status": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

