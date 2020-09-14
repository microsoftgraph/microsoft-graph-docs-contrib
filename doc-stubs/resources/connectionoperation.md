---
title: "connectionOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# connectionOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List operations](../api/externalconnection-list-operations.md)|[connectionOperation](../resources/connectionoperation.md) collection|Get the connectionOperation resources from the operations navigation property.|
|[Create operations](../api/externalconnection-post-operations.md)|[connectionOperation](../resources/connectionoperation.md)|Create a new connectionOperation object.|
|[Update operations](../api/externalconnection-update-operations.md)|[connectionOperation](../resources/connectionoperation.md)|Update the properties of an operations object.|
|[Get operations](../api/externalconnection-get-connectionoperation.md)|[connectionOperation](../resources/connectionoperation.md)|Read the properties and relationships of a [connectionOperation](../resources/connectionoperation.md) object.|
|[Delete operations](../api/externalconnection-delete-operations.md)|None|Delete a [connectionOperation](../resources/connectionoperation.md) object.|
|[List connectionOperations](../api/connectionoperation-list.md)|[connectionOperation](../resources/connectionoperation.md) collection|Get a list of the [connectionOperation](../resources/connectionoperation.md) objects and their properties.|
|[Create connectionOperation](../api/connectionoperation-create.md)|[connectionOperation](../resources/connectionoperation.md)|Create a new [connectionOperation](../resources/connectionoperation.md) object.|
|[Get connectionOperation](../api/connectionoperation-get.md)|[connectionOperation](../resources/connectionoperation.md)|Read the properties and relationships of a [connectionOperation](../resources/connectionoperation.md) object.|
|[Update connectionOperation](../api/connectionoperation-update.md)|[connectionOperation](../resources/connectionoperation.md)|Update the properties of a [connectionOperation](../resources/connectionoperation.md) object.|
|[Delete connectionOperation](../api/connectionoperation-delete.md)|None|Deletes a [connectionOperation](../resources/connectionoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[errorDetail](../resources/errordetail.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|status|connectionOperationStatus|**TODO: Add Description**. Possible values are: `unspecified`, `inprogress`, `completed`, `failed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.connectionOperation",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.connectionOperation",
  "id": "String (identifier)",
  "status": "String",
  "error": {
    "@odata.type": "microsoft.graph.errorDetail"
  }
}
```

