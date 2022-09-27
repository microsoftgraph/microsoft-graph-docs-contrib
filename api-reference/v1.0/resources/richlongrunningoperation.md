---
title: "richLongRunningOperation resource type"
description: "Represents the status of a long-running operation on a site or a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# richLongRunningOperation resource type

Namespace: microsoft.graph

Represents the status of a long-running operation on a [site](../resources/site.md) or a [list](../resources/list.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get richLongRunningOperation](../api/richlongrunningoperation-get.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Get the status of a [rich long-running operation](../resources/richlongrunningoperation.md) on a [site](../resources/site.md) or a [list](../resources/list.md).|

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
|status|longRunningOperationStatus|The status of the long-running operation. Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
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
  "createdDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "percentageComplete": "Integer",
  "resourceId": "String",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "type": "String"
}
```

