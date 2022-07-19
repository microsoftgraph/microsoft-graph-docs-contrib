---
title: "longRunningOperation resource type"
description: "**TODO: Add Description**"
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a long-running operation.

## Properties

| Property           | Type                       | Description                                                                                                                          |
| :----------------- | :------------------------- | :----------------------------------------------------------------------------------------------------------------------------------- |
| createdDateTime    | DateTimeOffset             | The date and time when this operation was created.                                                                                   |
| id                 | String                     | Unique identifier for the operation. Inherited from [entity](../resources/entity.md).                                                |
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
