---
title: "longRunningOperation resource type"
description: "Represents metadata for long running operation."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata for a long running operation.

## Methods

| Method                                                                         | Return type                                                                | Description                                                                                          |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------- |
| [List longRunningOperations](../api/industrydata-longRunningOperation-list.md) | [microsoft.graph.longRunningOperation](longRunningOperation.md) collection | Get a list of the [longRunningOperations](longRunningOperation.md) objects and their properties.     |
| [Get longRunningOperation](../api/industrydata-longRunningOperation-get.md)   | [microsoft.graph.longRunningOperation](longRunningOperation.md)            | Read the properties and relationships of an [longRunningOperations](longRunningOperation.md) object. |

## Properties

| Property           | Type                       | Description                                                                                                             |
| :----------------- | :------------------------- | :---------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset             | Time when this operation was created.                                                                                   |
| id                 | String                     | Operation identifier. Inherits from [entity](../resources/entity.md).                                                   |
| lastActionDateTime | DateTimeOffset             | Time when last action was performed on this operation.                                                                  |
| resourceLocation   | String                     | Canonical url of the resource.                                                                                          |
| status             | longRunningOperationStatus | Status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. |
| statusDetail       | String                     | Detail about the status value.                                                                                          |

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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "statusDetail": "String"
}
```
