---
title: "teamsAsyncOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsAsyncOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List operations](../api/team-list-operations.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md) collection|Get the teamsAsyncOperation resources from the operations navigation property.|
|[Create operations](../api/team-post-operations.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Create a new teamsAsyncOperation object.|
|[Update operations](../api/team-update-operations.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Update the properties of an operations object.|
|[Get operations](../api/team-get-teamsasyncoperation.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Read the properties and relationships of a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|
|[Delete operations](../api/team-delete-operations.md)|None|Delete a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|
|[List teamsAsyncOperations](../api/teamsasyncoperation-list.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md) collection|Get a list of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) objects and their properties.|
|[Create teamsAsyncOperation](../api/teamsasyncoperation-create.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Create a new [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|
|[Get teamsAsyncOperation](../api/teamsasyncoperation-get.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Read the properties and relationships of a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|
|[Update teamsAsyncOperation](../api/teamsasyncoperation-update.md)|[teamsAsyncOperation](../resources/teamsasyncoperation.md)|Update the properties of a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|
|[Delete teamsAsyncOperation](../api/teamsasyncoperation-delete.md)|None|Deletes a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attemptsCount|Int32|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|error|[operationError](../resources/operationerror.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|operationType|teamsAsyncOperationType|**TODO: Add Description**. Possible values are: `invalid`, `cloneTeam`, `archiveTeam`, `unarchiveTeam`, `createTeam`, `unknownFutureValue`.|
|status|teamsAsyncOperationStatus|**TODO: Add Description**. Possible values are: `invalid`, `notStarted`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|
|targetResourceId|String|**TODO: Add Description**|
|targetResourceLocation|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAsyncOperation",
  "baseType": "",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAsyncOperation",
  "id": "String (identifier)",
  "operationType": "String",
  "createdDateTime": "String (timestamp)",
  "status": "String",
  "lastActionDateTime": "String (timestamp)",
  "attemptsCount": "Integer",
  "targetResourceId": "String",
  "targetResourceLocation": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  }
}
```

