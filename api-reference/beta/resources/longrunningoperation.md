---
title: "longRunningOperation resource type"
description: "Represents the status of a long-running operation."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a long-running operation.

## Methods

| Method                                                                                | Return type                                                             | Description                                                                                                                       |
|:--------------------------------------------------------------------------------------|:------------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|
| **Common long-running operations** |||
| [Get longRunningOperation](../api/longrunningoperation-get.md)                        | [longRunningOperation](../resources/longrunningoperation.md)            | Get the status of a long-running operation, represented by a [longRunningOperation](../resources/longrunningoperation.md) object. |
| **Industry data** |||
| [List longRunningOperations](../api/industrydata-industrydataroot-list-operations.md) | [longRunningOperation](../resources/longrunningoperation.md) collection | Get a list of [long-running operations](../resources/longrunningoperation.md) and their statuses.                                 |

## Properties

| Property           | Type                       | Description                                                                                                                          |
| :----------------- | :------------------------- | :----------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset             | The date and time when this operation was created.                                                                                   |
| id                 | String                     | The unique identifier for the operation. Inherited from [entity](../resources/entity.md).                                            |
| lastActionDateTime | DateTimeOffset             | The date and time when the last action was performed on this operation.                                                              |
| resourceLocation   | String                     | The canonical URL of the resource.                                                                                                   |
| status             | longRunningOperationStatus | The status of the long-running operation. Possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                     | The detail about the status value.                                                                                                   |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.longRunningOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String"
}
```
