---
title: "richLongRunningOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# richLongRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List richLongRunningOperations](../api/richlongrunningoperation-list.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md) collection|Get a list of the [richLongRunningOperation](../resources/richlongrunningoperation.md) objects and their properties.|
|[Create richLongRunningOperation](../api/list-post-operations.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Create a new [richLongRunningOperation](../resources/richlongrunningoperation.md) object.|
|[Get richLongRunningOperation](../api/richlongrunningoperation-get.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Read the properties and relationships of a [richLongRunningOperation](../resources/richlongrunningoperation.md) object.|
|[Update richLongRunningOperation](../api/richlongrunningoperation-update.md)|[richLongRunningOperation](../resources/richlongrunningoperation.md)|Update the properties of a [richLongRunningOperation](../resources/richlongrunningoperation.md) object.|
|[Delete richLongRunningOperation](../api/richlongrunningoperation-delete.md)|None|Deletes a [richLongRunningOperation](../resources/richlongrunningoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|error|[publicError](../resources/synchronization-publicerror.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|percentageComplete|Int32|**TODO: Add Description**|
|resourceId|String|**TODO: Add Description**|
|resourceLocation|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|type|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.richLongRunningOperation",
  "baseType": "microsoft.graph.longRunningOperation",
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

