---
title: "fileValidateOperation resource type"
description: "Represents the asynchronous operation results from any operation that validates file data."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# fileValidateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the asynchronous operation results from any operation that validates file data.

Loop through the list to upload the latest CSV files in preparation for basic file validation. Once the files have been uploaded, call `validate()` to validate the uploaded files and finalize the upload session. Once the files have been validated, they are moved to an internal container for processing by an `industryDataInboundFlow`.

The `validate()` action is a long-running operation. The link to the operation is returned in the `Location` header. Once the validation is complete, the results can be obtained through the `Location` URI.

Recommend to poll no less than every 5 seconds while the status is `in progress`.

Inherits from [validateOperation](../resources/industrydata-validateoperation.md).

## Properties

| Property           | Type                                                                  | Description                                                                                                                                                                                          |
| :----------------- | :-------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset                                                        | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| errors             | [microsoft.graph.publicError](../resources/publicerror.md) collection | Set of errors discovered by validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                          |
| id                 | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| lastActionDateTime | DateTimeOffset                                                        | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| resourceLocation   | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| status             | longRunningOperationStatus                                            | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                                                                | **TODO: Add Description** Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                               |
| validatedFiles     | String collection                                                     | Set of files validated by the validate operation.                                                                                                                                                    |
| warnings           | [microsoft.graph.publicError](../resources/publicerror.md) collection | Set of warnings discovered by validation. Inherited from [validateOperation](../resources/industrydata-validateoperation.md).                                                                        |

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
  "errors": [
    {"@odata.type": "microsoft.graph.publicError"}
  ],
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "validatedFiles": ["String"],
  "warnings": [
    {"@odata.type": "microsoft.graph.publicError"}
  ]
}
```
