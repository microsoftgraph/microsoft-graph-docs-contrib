---
title: "payload resource type"
description: "Represents an attack simulation training payload in a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# payload resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training payload in a tenant.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

The attack simulation and training API enables tenant administrators to list payloads.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List payload](../api/attacksimulationroot-list-payload.md)|[payload](../resources/payload.md) collection|Get a list of attack simulation payload for a tenant.|
|[Get payload](../api/attacksimulationroot-get-payload.md)|[payload](../resources/payload.md)|Get an attack simulation payload for a tenant.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the attack simulation and training campaign. Inherited from [entity](../resources/entity.md).|
|description|String|Description of the attack simulation and training campaign.|
|displayName|String|Display name of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|simulationAttackType|[simulationAttackType](#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|attackTechnique|[simulationAttackTechnique](#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|isAutomated|Boolean|Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports `$filter` and `$orderby`. |
|status|[simulationContentStatus](#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|source|[simulationContentSource](#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|language|String|Unique identifier for the attack simulation automation.|
|predictedCompromiseRate|Double|Unique identifier for the attack simulation automation.|
|automationId|String|Unique identifier for the attack simulation automation.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign.|
|createdDateTime|DateTimeOffset|Date and time of creation of the attack simulation and training campaign.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the attack simulation and training campaign.|

### simulationStatus values

|Member|Description |
|:---|:---|
|unknown| The simulation status is not defined. |
|draft| The simulation is in draft mode. |
|running| The simulation is running. |
|scheduled| The simulation is scheduled. |
|succeeded| The simulation has succeeded. |
|failed| The simulation has failed. |
|cancelled| The simulation is cancelled. |
|excluded| The simulation is excluded. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## See also
- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
