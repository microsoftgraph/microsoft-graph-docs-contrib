---
title: "simulation resource type"
description: "Represents an attack simulation training campaign in a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 12/01/2024
---

# simulation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training campaign in a tenant.

Attack simulation and training is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). This service lets tenant users experience a realistic benign phishing attack and learn from it. The service enables tenant administrators to simulate, assign trainings, and read derived insights into online behaviors of users in the phishing simulations. The service provides attack simulation reports that help tenants identify security knowledge gaps, so that they can further train their users to decrease their susceptibility to attacks.

The attack simulation and training API enables tenant administrators to list launched **simulation** exercises and trainings, and get [reports](report-m365defender-reports-overview.md) on derived insights into online behaviors of users in the phishing simulations.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get a list of attack simulation campaigns for a tenant.|
|[Create simulation](../api/attacksimulationroot-post-simulation.md)|[simulation](../resources/simulation.md)|Create a new [simulation](../resources/simulation.md) object.|
|[Get simulation](../api/simulation-get.md)|[simulation](../resources/simulation.md)|Get an attack simulation campaign for a tenant.|
|[Update simulation](../api/simulation-update.md)|[simulation](../resources/simulation.md)|Update the properties of a [simulation](../resources/simulation.md) object.|
|[Delete simulation](../api/simulation-delete.md)|None|Delete a [simulation](../resources/simulation.md) object.|
|[Get payload](../api/payload-get.md)|None|Get a [payload](../resources/payload.md) object.|
|[Get loginPage](../api/loginpage-get.md)|None|Get a [loginPage](../resources/loginpage.md) object.|
|[Get landingPage](../api/landingpage-get.md)|None|Get a [landingPage](../resources/landingpage.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attackTechnique|[simulationAttackTechnique](#simulationattacktechnique-values)|The social engineering technique used in the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`, `oAuthConsentGrant`, `phishTraining`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `oAuthConsentGrant`, `phishTraining`. For more information on the types of social engineering attack techniques, see [simulations](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).|
|attackType|[simulationAttackType](#simulationattacktype-values)|Attack type of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|automationId|String|Unique identifier for the attack simulation automation.|
|completionDateTime|DateTimeOffset|Date and time of completion of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who created the attack simulation and training campaign.|
|createdDateTime|DateTimeOffset|Date and time of creation of the attack simulation and training campaign.|
|description|String|Description of the attack simulation and training campaign.|
|displayName|String|Display name of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|durationInDays|Int32|Simulation duration in days.|
|endUserNotificationSetting|[endUserNotificationSetting](../resources/endusernotificationsetting.md)|Details about the end user notification setting.|
|excludedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|Users excluded from the simulation.|
|id|String|Unique identifier for the attack simulation and training campaign. Inherited from [entity](../resources/entity.md).|
|includedAccountTarget|[accountTargetContent](../resources/accounttargetcontent.md)|Users targeted in the simulation.|
|isAutomated|Boolean|Flag that represents if the attack simulation and training campaign was created from a simulation automation flow. Supports `$filter` and `$orderby`. |
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|Identity of the user who most recently modified the attack simulation and training campaign.|
|lastModifiedDateTime|DateTimeOffset|Date and time of the most recent modification of the attack simulation and training campaign.|
|launchDateTime|DateTimeOffset|Date and time of the launch/start of the attack simulation and training campaign. Supports `$filter` and `$orderby`.|
|oAuthConsentAppDetail|[oAuthConsentAppDetail](../resources/oauthconsentappdetail.md)|OAuth app details for the OAuth technique.|
|payloadDeliveryPlatform|payloadDeliveryPlatform|Method of delivery of the phishing payload used in the attack simulation and training campaign. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|report|[simulationReport](../resources/simulationreport.md)|Report of the attack simulation and training campaign.|
|status|[simulationStatus](#simulationstatus-values)|Status of the attack simulation and training campaign. Supports `$filter` and `$orderby`. Possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`.|
|trainingSetting|[trainingSetting](../resources/trainingsetting.md)|Details about the training settings for a simulation.|

### simulationStatus values

|Member|Description |
|:---|:---|
|unknown| The simulation status isn't defined. |
|draft| The simulation is in draft mode. |
|running| The simulation is running. |
|scheduled| The simulation is scheduled. |
|succeeded| The simulation is complete with success status. |
|failed| The simulation is complete with fail status. |
|cancelled| The simulation is cancelled. |
|excluded| The simulation is excluded. |
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |

### simulationAttackTechnique values

|Member|Description |
|:---|:---|
|unknown| Attack technique not defined. |
|credentialHarvesting| Attack technique that involves an end user supplying credentials. |
|attachmentMalware| Attack technique that involves an end user clicking an attachment. |
|driveByUrl| Attack technique that involves an end user clicking a URL link in the phishing payload. |
|linkInAttachment| Attack technique that involves an end user clicking a URL link in an attachment. |
|linkToMalwareFile| Attack technique that involves an end user clicking a URL link to a malware file. |
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |
|oAuthConsentGrant|  Attack technique that involves an end user who gives access consent to an app.|
|phishTraining|  Attack technique that involves training end users on actions to be performed on a phish mail.|

### simulationAttackType values

|Member|Description |
|:---|:---|
|unknown| Attack type not identified. |
|social| Attack that uses social skills to manipulate victims psychologically, creating a false sense of curiosity, urgency, or fear. |
|cloud| Attack on a host or user in a cloud environment, for example, denial of service attacks.|
|endpoint| Attack on endpoints of a corporate network, such as desktops, laptops, mobile phones, and Internet of Things (IoT) devices. |
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |

### simulationContentStatus values

|Member|Description |
|:---|:---|
|unknown| The simulation content status isn't defined. |
|draft| The simulation content status is in draft state. |
|ready| The simulation content status is in ready state. |
|archive| The simulation content status is archive state. |
|delete| The simulation content status is in delete state. |
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |

### simulationContentSource values

|Member|Description |
|:---|:---|
|unknown| The simulation content source isn't defined. |
|global| The simulation content source is global. |
|tenant| The simulation content source is tenant. |
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|landingPage|[landingPage](../resources/landingpage.md)|The landing page associated with a simulation during its creation.|
|loginPage|[loginPage](../resources/loginpage.md)|The login page associated with a simulation during its creation.|
|payload|[payload](../resources/payload.md)|The payload associated with a simulation during its creation.|

## JSON representation

The following JSON representation shows the resource type.
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
  "attackTechnique": "String",
  "attackType": "String",
  "automationId": "String",
  "completionDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "durationInDays": "Int32",
  "endUserNotificationSetting": {"@odata.type": "microsoft.graph.endUserNotificationSetting"},
  "excludedAccountTarget": {"@odata.type": "microsoft.graph.accountTargetContent"},
  "id": "String (identifier)",
  "includedAccountTarget": {"@odata.type": "microsoft.graph.accountTargetContent"},
  "isAutomated": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.emailIdentity"},
  "lastModifiedDateTime": "String (timestamp)",
  "launchDateTime": "String (timestamp)",
  "oAuthConsentAppDetail": {"@odata.type": "microsoft.graph.oAuthConsentAppDetail"},
  "payloadDeliveryPlatform": "String",
  "report": {"@odata.type": "microsoft.graph.simulationReport"},
  "status": "String",
  "trainingSetting": {"@odata.type": "microsoft.graph.trainingSetting"}
}
```

## Related content

- [Simulate a phishing attack](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true)
- [Get started using attack simulation training](/microsoft-365/security/office-365-security/attack-simulation-training-get-started?view=o365-worldwide&preserve-view=true#simulations).
