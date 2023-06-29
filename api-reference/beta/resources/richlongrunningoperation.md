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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|createdDateTime|DateTimeOffset|Time when this operation was created.|
|error|[publicError](../resources/publicerror.md)| Error due to which the operation failed.|
|id|String|Operation identifier. Inherits from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset| Time when last action was performed on this operation.|
|percentageComplete|Int32|A value between 0 and 100 that indicates the progress of the operation.|
|resourceId|String|A unique identifier for the result.|
|resourceLocation|String|Canonical url of the resource.|
|status|longRunningOperationStatus|Status of the opertaion.The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|Detail about the status value.|
|type|String| Type of the operation.|

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

