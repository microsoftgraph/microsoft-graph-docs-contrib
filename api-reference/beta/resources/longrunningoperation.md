---
title: "longRunningOperation resource type"
description: "The status of a long-running operation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# longRunningOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The status of a long-running operation.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation.|
|id|String|The unique identifier of the operation |
|lastActionDateTime|DateTimeOffset|The time of the last action in the operation.|
|resourceLocation|String| URI of the resource that the operation is performed on. |
|status|[longRunningOperationStatus](#longrunningoperationstatus-values)|The status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|Details about the status of the operation.|

### longRunningOperationStatus values

| Member             | Description                                       |
|:-------------------|:--------------------------------------------------|
| notStarted         | The operation has not started.                    |
| running            | The operation is in running state.                |
| succeeded          | The operation has succeeded.                      |
| failed             | The operation has failed.                         |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

### simulationStatus values

| Member             | Description                                       |
|:-------------------|:--------------------------------------------------|
| unknown            | The simulation status is not defined.             |
| draft              | The simulation is in draft mode.                  |
| running            | The simulation is running.                        |
| scheduled          | The simulation is scheduled.                      |
| succeeded          | The simulation has succeeded.                     |
| failed             | The simulation has failed.                        |
| cancelled          | The simulation is cancelled.                      |
| excluded           | The simulation is excluded.                       |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.longRunningOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
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

<!-- uuid: 13fa92b1-3b41-498b-aab1-f943464a124f
2018-03-30 10:29:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

