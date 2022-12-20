---
title: "attackSimulationOperation resource type"
description: "Represents an attack simulation training operation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---


# attackSimulationOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training operation.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

For LRO api, this type will contain the respective details

Inherits from [longRunningOperation](../resources/longrunningoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get operation](../api/attacksimulationroot-get-operation.md)|[operation](../resources/attackSimulationOperation.md)|Get an attack simulation operation to track a LRO request for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Operation created date time. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|id|String|The unique identifier for the training. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|Last action date time. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|percentageCompleted|Int32| Percentage of completion of the respective operation.|
|resourceLocation|String|Tracking resource location. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|status|longRunningOperationStatus|Operation status. Inherited from [longRunningOperation](../resources/longrunningoperation.md). The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|
|statusDetail|String|Status detail of the operation. Inherited from [longRunningOperation](../resources/longrunningoperation.md).|
|tenantId|String|Tenant identifier.|
|type|attackSimulationOperationType|Attack simulation operation type.The possible values are: `createSimulation`, `updateSimulation`.|

### attackSimulationOperationType values

|Member|Description |
|:---|:---|
|unknown| The operation is not defined. |
|createSimulation| The simulation creation operation. |
|updateSimulation| The simulation update operation. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
    "status": {
        "@odata.type": "microsoft.graph.longRunningOperationStatus"
    },
    "statusDetail": "String",
    "tenantId": "String",
    "type": {
        "@odata.type": "microsoft.graph.attackSimulationOperationType"
    }
}
```

## See also
- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
