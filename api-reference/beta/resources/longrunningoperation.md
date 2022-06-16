---
title: "longRunningOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List longRunningOperations](../api/authentication-list-operations.md)|[longRunningOperation](../resources/longrunningoperation.md) collection|Get a list of the [longRunningOperation](../resources/longrunningoperation.md) objects and their properties.|
|[Create longRunningOperation](../api/authentication-post-operations.md)|[longRunningOperation](../resources/longrunningoperation.md)|Create a new [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Get longRunningOperation](../api/longrunningoperation-get.md)|[longRunningOperation](../resources/longrunningoperation.md)|Read the properties and relationships of a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Update longRunningOperation](../api/longrunningoperation-update.md)|[longRunningOperation](../resources/longrunningoperation.md)|Update the properties of a [longRunningOperation](../resources/longrunningoperation.md) object.|
|[Delete longRunningOperation](../api/authentication-delete-operations.md)|None|Deletes a [longRunningOperation](../resources/longrunningoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|resourceLocation|String|**TODO: Add Description**|
|status|longRunningOperationStatus|**TODO: Add Description**.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
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
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String"
}
```

