---
title: "Operation details for attacksimulation"
description: "Represents an attack simulation training operation. For LRO api, this type will contain the respective details."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationResouce resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training operation.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

For LRO api, this type will contain the respective details

Inherits from [longRunningOperation](../resources/longRunningOperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get operation](../api/attacksimulationroot-get-operation.md)|[attackSimulationOperation](../resources/attackSimulationOperation.md)|Get an attack simulation operation to track a LRO request for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|[attackSimulationOperationType](#attackSimulationOperationType-values)|Attack simulation operation type|
|tenantId|String|Tenant identifier.|
|percentageCompleted|Int32|Display name of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|

### attackSimulationOperationType values

|Member|Description |
|:---|:---|
|unknown| The operation is not defined. |
|createSimulation| The simulation creation operation. |
|updateSimulation| The simulation updation operation. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## See also
- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
