---
title: "longRunningOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List operations](../api/authentication-list-operations.md)|[longRunningOperation](../resources/longrunningoperation.md) collection|Get the longRunningOperations from the operations navigation property.|
|[Create operations](../api/authentication-post-operations.md)|[longRunningOperation](../resources/longrunningoperation.md)|Create a new operations object.|
|[Update operations](../api/authentication-update-operations.md)|[longRunningOperation](../resources/longrunningoperation.md)|Update the properties of an operations object.|
|[Get operations](../api/authentication-get-longrunningoperation.md)|[longRunningOperation](../resources/longrunningoperation.md)|Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Delete operations](../api/authentication-delete-operations.md)|None|Delete a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[List longRunningOperations](../api/longrunningoperation-list.md)|[longRunningOperation](../resources/longrunningoperation.md) collection|Get a list of the [longRunningOperation](../resources/longrunningoperation.md) objects and their properties.|
|[Create longRunningOperation](../api/longrunningoperation-create.md)|[longRunningOperation](../resources/longrunningoperation.md)|Create a new [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Get longRunningOperation](../api/longrunningoperation-get.md)|[longRunningOperation](../resources/longrunningoperation.md)|Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Update longRunningOperation](../api/longrunningoperation-update.md)|[longRunningOperation](../resources/longrunningoperation.md)|Update the properties of a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Delete longRunningOperation](../api/longrunningoperation-delete.md)|None|Deletes a [longRunningOperation](../resources/longrunningoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|resourceLocation|String|**TODO: Add Description**|
|status|longRunningOperationStatus|**TODO: Add Description**. Possible values are: `notstarted`, `running`, `succeeded`, `failed`.|
|statusDetail|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.longRunningOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.longRunningOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String",
  "statusDetail": "String",
  "resourceLocation": "String"
}
```

