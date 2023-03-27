---
title: "validateOperation resource type"
description: "Represents an abstract type for the asynchronous operation that results from any operation that validates data."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# validateOperation resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type for the asynchronous operation that results from any operation that validates data.

Inherits from [longRunningOperation](../resources/longrunningoperation.md).

Base type of [fileValidateOperation](../resources/industrydata-filevalidateoperation.md).

## Properties

| Property           | Type                                                     | Description                                                                                                                                                                                                       |
| :----------------- | :------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset                                           | The date and time when this operation was created. Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                   |
| errors             | [microsoft.graph.publicError](publicerror.md) collection | Set of errors discovered through validation.                                                                                                                                                                      |
| id                 | String                                                   | The unique identifier for the operation. Inherited from [entity](../resources/entity.md).                                                                                                                         |
| lastActionDateTime | DateTimeOffset                                           | The date and time when the last action was run on this operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                    |
| resourceLocation   | String                                                   | The canonical URL of the resource. Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                                   |
| status             | longRunningOperationStatus                               | The status of the long-running operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md). Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                                                   | The detail about the status value. Inherited from [longRunningOperation](../resources/longrunningoperation.md).                                                                                                   |
| warnings           | [microsoft.graph.publicError](publicerror.md) collection | Set of warnings discovered through validation.                                                                                                                                                                    |

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

```json
{
  "@odata.type": "#microsoft.graph.industryData.validateOperation",
  "createdDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ],
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String",
  "warnings": [
    {
      "@odata.type": "microsoft.graph.publicError"
    }
  ]
}
```
