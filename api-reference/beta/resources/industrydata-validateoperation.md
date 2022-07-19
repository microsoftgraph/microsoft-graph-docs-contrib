---
title: "validateOperation resource type"
description: "This entity represents the asynchronous operation results from any operation that validates data."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# validateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity represents the asynchronous operation results from any operation that validates data.
This is an abstract type.


Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List validateOperations](../api/industrydata-validateoperation-list.md)|[microsoft.graph.industryData.validateOperation](../resources/industrydata-validateoperation.md) collection|Get a list of the [validateOperation](../resources/industrydata-validateoperation.md) objects and their properties.|
|[Get validateOperation](../api/industrydata-validateoperation-get.md)|[microsoft.graph.industryData.validateOperation](../resources/industrydata-validateoperation.md)|Read the properties and relationships of a [validateOperation](../resources/industrydata-validateoperation.md) object.|
|[Update validateOperation](../api/industrydata-validateoperation-update.md)|[microsoft.graph.industryData.validateOperation](../resources/industrydata-validateoperation.md)|Update the properties of a [validateOperation](../resources/industrydata-validateoperation.md) object.|
|[Delete validateOperation](../api/industrydata-validateoperation-delete.md)|None|Deletes a [validateOperation](../resources/industrydata-validateoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|errors|[microsoft.graph.publicError](../resources/publicerror.md) collection|Set of errors discovered by validation.|
|id|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|resourceLocation|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|warnings|[microsoft.graph.publicError](../resources/publicerror.md) collection|Set of warnings discovered by validation.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.validateOperation",
  "baseType": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.validateOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "errors": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ],
  "warnings": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ]
}
```

