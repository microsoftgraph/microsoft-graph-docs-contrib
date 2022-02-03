---
title: "granularAdminOperation resource type"
description: "**TODO: Add Description**"
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: resourcePageType
---

# granularAdminOperation resource type

Namespace: microsoft.graph



**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List granularAdminOperations](../api/granularadminoperation-list.md)|[granularAdminOperation](../resources/granularadminoperation.md) collection|Get a list of the [granularAdminOperation](../resources/granularadminoperation.md) objects and their properties.|
|[Create granularAdminOperation](../api/granularadminrelationship-post-operations.md)|[granularAdminOperation](../resources/granularadminoperation.md)|Create a new [granularAdminOperation](../resources/granularadminoperation.md) object.|
|[Get granularAdminOperation](../api/granularadminoperation-get.md)|[granularAdminOperation](../resources/granularadminoperation.md)|Read the properties and relationships of a [granularAdminOperation](../resources/granularadminoperation.md) object.|
|[Update granularAdminOperation](../api/granularadminoperation-update.md)|[granularAdminOperation](../resources/granularadminoperation.md)|Update the properties of a [granularAdminOperation](../resources/granularadminoperation.md) object.|
|[Delete granularAdminOperation](../api/granularadminoperation-delete.md)|None|Deletes a [granularAdminOperation](../resources/granularadminoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|data|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|operationType|String|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularAdminOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularAdminOperation",
  "id": "String (identifier)",
  "operationType": "String",
  "data": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

