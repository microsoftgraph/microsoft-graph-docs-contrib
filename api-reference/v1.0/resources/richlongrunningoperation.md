---
title: "richLongRunningOperation resource type"
description: "Contains metadata about long running operation."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# richLongRunningOperation resource type

Namespace: microsoft.graph

Contains metadata about long running operation.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List richLongRunningOperations in a site](../api/site-list-operations.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md) collection|Get a list of the [richLongRunningOperation](../resources/richlongrunningoperation.md) objects and their properties in a site.|
|[List richLongRunningOperations in a list](../api/list-list-operations.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md) collection|Get a list of the [richLongRunningOperation](../resources/richlongrunningoperation.md) objects and their properties in a list.|
|[Get richLongRunningOperation](../api/richlongrunningoperation-get.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Read the properties of a [richLongRunningOperation](../resources/richlongrunningoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when this operation was created.|
|error|[publicError](../resources/publicerror.md)| Error that caused the operation to fail.|
|id|String|Unique identifier for the operation. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset| The date and time when the last action was performed on this operation.|
|percentageComplete|Int32|A value between 0 and 100 that indicates the progress of the operation.|
|resourceId|String|The unique identifier for the result.|
|resourceLocation|String|The canonical URL of the resource.|
|status|longRunningOperationStatus|The status of the operation. Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|The detail about the status value.|
|type|String| The type of the operation.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.richLongRunningOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.richLongRunningOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "percentageComplete": "Integer",
  "resourceId": "String",
  "type": "String"
}
```

