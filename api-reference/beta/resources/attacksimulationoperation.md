---
title: "attackSimulationOperation resource type"
description: "Represents the status of a long-running attack simulation training operation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# attackSimulationOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a long-running attack simulation training operation.

Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/attacksimulationoperation-get.md)|[attackSimulationOperation](../resources/attacksimulationoperation.md)|Get an attack simulation operation to track a long-running operation request for a tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Operation created date time. The timestamp represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|id|String|The unique identifier for the operation. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action in the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|percentageCompleted|Int32| Percentage of completion of the respective operation.|
|resourceLocation|String|URI of the resource location. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|Operation status. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|statusDetail|String|Status detail of the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|tenantId|String|Tenant identifier.|
|type|[attackSimulationOperationType](#attacksimulationoperationtype-values)|The attack simulation operation type. Possible values are: `createSimulation`, `updateSimulation`, `unknownFutureValue`.|

### attackSimulationOperationType values

|Member|Description |
|:---|:---|
|createSimulation| The simulation creation operation. |
|updateSimulation| The simulation update operation. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attackSimulationOperation",
  "baseType": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.attackSimulationOperation",
    "createdDateTime": "String (timestamp)",
    "id": "String (identifier)",
    "lastActionDateTime": "String (timestamp)",
    "percentageCompleted": "Int32",
    "resourceLocation": "String",
    "status": "String",
    "statusDetail": "String",
    "tenantId": "String",
    "type": "String"
}
```

## Related content

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
