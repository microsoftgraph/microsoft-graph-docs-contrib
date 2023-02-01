---
title: "fileValidateOperation resource type"
description: "Represents the asynchronous operation that results from any operation that validates file data."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# fileValidateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the asynchronous operation that results from any operation that validates file data.

Loop through the list to upload the latest CSV files in preparation for basic file validation. Once the files have been uploaded, call the [industryDataConnector: validate](../api/industrydata-industrydataconnector-validate.md) endpoint to validate the uploaded files and finalize the upload session. After the files have been validated, they are moved to an internal container for processing by an [inboundFlow](industrydata-inboundflow.md).

The [industryDataConnector: validate](../api/industrydata-industrydataconnector-validate.md) action is a long-running operation. The link to the operation is returned in the `Location` header. After the validation is complete, you can obtain the results through the `Location` URI.

We recommend polling no less than every 5 seconds while the status is `in progress`.

Inherits from [validateOperation](industrydata-validateoperation.md).

## Methods

| Method                                                                            | Return type                                                                                              | Description                                                                                                          |
| :-------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------- |
| [List fileValidateOperations](../api/industrydata-filevalidateoperation-list.md) | [microsoft.graph.industryData.fileValidateOperation](industrydata-filevalidateoperation.md) collection | Get a list of the [fileValidateOperation](industrydata-filevalidateoperation.md) objects and their properties.     |
| [Get fileValidateOperation](../api/industrydata-filevalidateoperation-get.md)    | [microsoft.graph.industryData.fileValidateOperation](industrydata-filevalidateoperation.md)            | Read the properties and relationships of an [fileValidateOperation](industrydata-filevalidateoperation.md) object. |

## Properties

| Property           | Type                                                     | Description                                                                                                                                                                                                              |
| :----------------- | :------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset                                           | The date and time when this operation was created. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                   |
| errors             | [microsoft.graph.publicError](publicerror.md) collection | Set of errors discovered through validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                         |
| id                 | String                                                   | The unique identifier for the operation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                             |
| lastActionDateTime | DateTimeOffset                                           | The date and time when the last action was run on this operation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                    |
| resourceLocation   | String                                                   | The canonical URL of the resource. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                                   |
| status             | longRunningOperationStatus                               | The status of the long-running operation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md). Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                                                   | The detail about the status value. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                                   |
| validatedFiles     | String collection                                        | Set of files validated by the validate operation.                                                                                                                                                                        |
| warnings           | [microsoft.graph.publicError](publicerror.md) collection | Set of warnings discovered through validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                                       |

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

```json
{
  "@odata.type": "#microsoft.graph.industryData.fileValidateOperation",
  "createdDateTime": "String (timestamp)",
  "errors": [{ "@odata.type": "microsoft.graph.publicError" }],
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "validatedFiles": ["String"],
  "warnings": [{ "@odata.type": "microsoft.graph.publicError" }]
}
```
