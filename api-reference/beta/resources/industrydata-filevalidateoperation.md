---
title: "fileValidateOperation resource type"
description: "This entity represents the asynchronous operation results from any operation that validates file data."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# fileValidateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity represents the asynchronous operation results from any operation that validates file data.


Inherits from [validateOperation](../resources/industrydata-validateoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fileValidateOperations](../api/industrydata-filevalidateoperation-list.md)|[microsoft.graph.industryData.fileValidateOperation](../resources/industrydata-filevalidateoperation.md) collection|Get a list of the [fileValidateOperation](../resources/industrydata-filevalidateoperation.md) objects and their properties.|
|[Get fileValidateOperation](../api/industrydata-filevalidateoperation-get.md)|[microsoft.graph.industryData.fileValidateOperation](../resources/industrydata-filevalidateoperation.md)|Read the properties and relationships of a [fileValidateOperation](../resources/industrydata-filevalidateoperation.md) object.|
|[Update fileValidateOperation](../api/industrydata-filevalidateoperation-update.md)|[microsoft.graph.industryData.fileValidateOperation](../resources/industrydata-filevalidateoperation.md)|Update the properties of a [fileValidateOperation](../resources/industrydata-filevalidateoperation.md) object.|
|[Delete fileValidateOperation](../api/industrydata-filevalidateoperation-delete.md)|None|Deletes a [fileValidateOperation](../resources/industrydata-filevalidateoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|errors|[microsoft.graph.publicError](../resources/publicerror.md) collection|Set of errors discovered by validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).|
|id|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|resourceLocation|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|**TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|validatedFiles|String collection|Set of files validated by the validate operation.|
|warnings|[microsoft.graph.publicError](../resources/publicerror.md) collection|Set of warnings discovered by validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.fileValidateOperation",
  "baseType": "microsoft.graph.industryData.validateOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.fileValidateOperation",
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
  ],
  "validatedFiles": [
    "String"
  ]
}
```

