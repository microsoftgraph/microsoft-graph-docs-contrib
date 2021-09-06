---
title: "simulation resource type"
description: "Represent attack simulation and training campaign of a tenant."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# simulation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent attack simulation and training campaign of a tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/simulation-list.md)|[simulation](../resources/simulation.md) collection|Get a list of the [simulation](../resources/simulation.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attackTechnique|simulationAttackTechnique|The social engineering technique used in the attack simulation. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|attackType|[simulationAttackType](#simulationattacktype-values)|Attack type of the simulation. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|cleanupArtifacts|Boolean|Flag representing if artifacts were cleaned up in the simulation.|
|completionDateTime|DateTimeOffset|Date and time of completion of the simulation. Supports `$filter` and `$orderby`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the creator of the simulation.|
|createdDateTime|DateTimeOffset|Date and time of creation of the simulation.|
|description|String|Description of the simulation.|
|displayName|String|Display name of the simulation. Supports `$filter` and `$orderby`.|
|enableRegionTimezoneDelivery|Boolean|Flag representing whether to enable or disable time-zone-aware delivery of phishing payload in the simulation.|
|id|String|Id of the simulation.|
|includeAllAccountTargets|Boolean|Flag representing inclusion of all users of a tenant in the simulation.|
|isAutomated|Boolean|Flag representing if the simulation was created from automation flow. Supports `$filter` and `$orderby`. |
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of user who most recently modified the simulation.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the simulation.|
|launchDateTime|DateTimeOffset|Date and time of the launch of the simulation. Supports `$filter` and `$orderby`.|
|mode|simulationMode|Mode of the simulation. Supports `$filter` and `$orderby`. Possible values are: `real`, `preview`, `unknownFutureValue`.|
|payloadDeliveryPlatform|payloadDeliveryPlatform|Delivery platform of the phishing payload in the simulation. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|payloadSource|payloadSource|Source of phishing payload in the simulation. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|simulationStatus|Status of the simulation. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `partiallyCompleted`, `failed`, `cancelled`, `excluded`, `deleted`, `included`, `unknownFutureValue`.|
|trainingAssignmentPreference|trainingAssignmentPreference|Preference of training assignment to user in the simulation. Possible values are: `unknown`, `auto`, `manual`, `unknownFutureValue`.|
|trainingContentPreference|trainingContentPreference|Preference of the training content in the simulation. Possible values are: `unknown`, `microsoft`, `custom`, `noTraining`, `unknownFutureValue`.|
|trainingDueDateTime|DateTimeOffset|Due date and time of the assigned trainings to users of a tenant in the simulation.|

### simulationAttackType values

|Member|Description |
|:---|:---|
|unknown| Attack type not identified. |
|social| Attack that uses social skills to manipulate victims psychologically, creating a false sense of curiosity, urgency, or fear. |
|cloud| Attack on a host or user in a cloud environment, for example, denial of service attacks.|
|endpoint| Attack on endpoints of a corporate network, such as desktops, laptops, mobile phones, Internet-of-things devices. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.simulation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulation",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
  "attackTechnique": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "launchDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "includeAllAccountTargets": "Boolean",
  "enableRegionTimezoneDelivery": "Boolean",
  "mode": "String",
  "isAutomated": "Boolean",
  "cleanupArtifacts": "Boolean",
  "payloadSource": "String",
  "payloadDeliveryPlatform": "String",
  "trainingAssignmentPreference": "String",
  "trainingContentPreference": "String",
  "trainingDueDateTime": "String (timestamp)"
}
```


## See also
[Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations)
