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
|attackTechnique|[simulationAttackTechnique](#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|attackType|[simulationAttackType](#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|cleanupArtifacts|Boolean|Flag representing if artifacts were cleaned up in the attack simulation and training campaign.|
|completionDateTime|DateTimeOffset|Date and time of completion of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of user who created the attack simulation and training campaign.|
|createdDateTime|DateTimeOffset|Date and time of creation of the attack simulation and training campaign.|
|description|String|Description of the attack simulation and training campaign.|
|displayName|String|Display name of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|enableRegionTimezoneDelivery|Boolean|Flag representing whether to enable or disable timezone-aware delivery of phishing payload in the attack simulation and training campaign.|
|id|String|Id of the attack simulation and training campaign.|
|includeAllAccountTargets|Boolean|Flag representing inclusion of all users of a tenant in the attack simulation and training campaign.|
|isAutomated|Boolean|Flag representing if the attack simulation and training campaign was created from simulation automation flow. Supports `$filter` and `$orderby`. |
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of user who most recently modified the attack simulation and training campaign.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the attack simulation and training campaign.|
|launchDateTime|DateTimeOffset|Date and time of the launch/start of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|mode|[simulationMode](#simulationmode-values)|Mode of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `real`, `preview`, `unknownFutureValue`.|
|payloadDeliveryPlatform|[payloadDeliveryPlatform](#payloaddeliveryplatform-values)|Method of delivery platform of the phishing payload used in the attack simulation and training campaign. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|payloadSource|[payloadSource](#payloadsource-values)|Source of phishing payload in the attack simulation and training campaign. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|status|[simulationStatus](#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `partiallyCompleted`, `failed`, `cancelled`, `excluded`, `deleted`, `included`, `unknownFutureValue`.|
|trainingAssignmentPreference|[trainingAssignmentPreference](#trainingassignmentpreference-values)|Preference of tenant admin for training assignment to users in the attack simulation and training campaign. Possible values are: `unknown`, `auto`, `manual`, `unknownFutureValue`.|
|trainingContentPreference|[trainingContentPreference](#trainingcontentpreference-values)|Preference of tenant admin to choose the source of training content to be assigned to users in the attack simulation and training campaign. Possible values are: `unknown`, `microsoft`, `custom`, `noTraining`, `unknownFutureValue`.|
|trainingDueDateTime|DateTimeOffset|Date and time before which the trainings need to completed by users in the attack simulation and training campaign.|

### simulationAttackTechnique values

|Member|
|:---|
|unknown|
|credentialHarvesting|
|attachmentMalware|
|driveByUrl|
|linkInAttachment|
|linkToMalwareFile|
|unknownFutureValue|

### simulationAttackType values

|Member|Description |
|:---|:---|
|unknown| Attack type not identified. |
|social| Attack that uses social skills to manipulate victims psychologically, creating a false sense of curiosity, urgency, or fear. |
|cloud| Attack on a host or user in a cloud environment, for example, denial of service attacks.|
|endpoint| Attack on endpoints of a corporate network, such as desktops, laptops, mobile phones, Internet-of-things devices. |
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

### simulationMode values

|Member|
|:---|
|real|
|preview|
|unknownFutureValue|

### simulationStatus values

|Member|
|:---|
|unknown|
|draft|
|inProgress|
|scheduled|
|completed|
|partiallyCompleted|
|failed|
|cancelled|
|excluded|
|deleted|
|included|
|unknownFutureValue|

### payloadDeliveryPlatform values

|Member|
|:---|
|unknown|
|sms|
|email|
|teams|
|unknownFutureValue|

### payloadSource values

|Member|
|:---|
|unknown|
|global|
|tenant|
|unknownFutureValue|

### trainingAssignmentPreference values

|Member|
|:---|
|unknown|
|auto|
|manual|
|unknownFutureValue|

### trainingContentPreference values

|Member|
|:---|
|unknown|
|microsoft|
|custom|
|noTraining|
|unknownFutureValue|

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
