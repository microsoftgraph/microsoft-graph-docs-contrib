---
title: "attackSimulationRoot resource type"
description: "Represents an abstract type for launching realistic phishing attacks that organizations can learn from."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# attackSimulationRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract type for launching realistic phishing attacks that organizations can learn from.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| **Attack simulation operation** |  |  |
|[Get attackSimulationOperation](../api/attacksimulationoperation-get.md)|[attackSimulationOperation](../resources/attacksimulationoperation.md)|Get an attack simulation campaign operation for a tracking ID.|
| **End user notification** |  |  |
|[List endUserNotification](../api/attacksimulationroot-list-endusernotifications.md)|[endUserNotification](../resources/endusernotification.md) collection|Get a list of [endUserNotification](../resources/endusernotification.md) objects and their properties.|
|[Get endUserNotification](../api/endusernotification-get.md)|[endUserNotification](../resources/endusernotification.md) |Read the properties and relationships of an [endUserNotification](../resources/endusernotification.md) object.|
| **Landing page** |  |  |
|[List landingPages](../api/attacksimulationroot-list-landingpage.md)|[landingPage](../resources/landingpage.md) collection|Get a list of the [landingPage](../resources/landingpage.md) objects and their properties.|
|[Get landingPage](../api/landingpage-get.md)|[landingPage](../resources/landingpage.md) |Get a [landingPage](../resources/landingpage.md) associated with an attack simulation campaign for a tenant.|
| **Login page** |  |  |
|[List loginPages](../api/attacksimulationroot-list-loginpage.md)|[loginPage](../resources/loginpage.md) collection|Get a list of the [loginPage](../resources/loginpage.md) objects and their properties.|
|[Get loginPage](../api/loginpage-get.md)|[loginPage](../resources/loginpage.md) |Get a [loginPage](../resources/loginpage.md) associated with an attack simulation campaign for a tenant.|
| **Payload** |  |  |
|[List payloads](../api/attacksimulationroot-list-payloads.md)|[payload](../resources/payload.md) collection|Get the payload resources from the payloads navigation property.|
|[Get payload](../api/payload-get.md)|[payload](../resources/payload.md)|Get the payload resource from the payloads navigation property.|
| **Simulation** |  |  |
|[List simulations](../api/attacksimulationroot-list-simulations.md)|[simulation](../resources/simulation.md) collection|Get a list of attack simulation campaigns for a tenant.|
|[Get simulations](../api/simulation-get.md)|[simulation](../resources/simulation.md) |Get an attack simulation campaigns for a tenant.|
|[Create simulations](../api/attacksimulationroot-post-simulation.md)|[simulation](../resources/simulation.md)|Create a new attack simulation campaigns for a tenant.|
|[Update simulations](../api/simulation-update.md)|[simulation](../resources/simulation.md)|Update a attack simulation campaigns for a tenant.|
|[Delete simulations](../api/simulation-delete.md)|[simulation](../resources/simulation.md)|Delete a attack simulation campaigns for a tenant.|
| **Simulation automation** |  |  |
|[List simulationAutomations](../api/attacksimulationroot-list-simulationautomations.md)|[simulationAutomation](../resources/simulationautomation.md) collection|Get a list of attack simulation automations for a tenant.|
|[Get simulationAutomations](../api/simulationautomation-get.md)|[simulationAutomation](../resources/simulationautomation.md) |Get an attack simulation automations for a tenant.|
| **Training** |  |  |
|[List trainings](../api/attacksimulationroot-list-trainings.md)|[training](../resources/training.md) collection|Get a list of the [training](../resources/training.md) objects and their properties.|
|[Get training](../api/training-get.md)|[training](../resources/training.md)|Get an attack simulation [training](../resources/training.md) for a tenant. |
|[List trainingCampaigns](../api/attacksimulationroot-list-trainingcampaigns.md)|[trainingCampaign](../resources/trainingcampaign.md) collection|Get the trainingCampaign resources from the trainingCampaigns navigation property.|
|[Create trainingCampaign](../api/attacksimulationroot-post-trainingcampaigns.md)|[trainingCampaign](../resources/trainingcampaign.md)|Create a new trainingCampaign object.|
## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|endUserNotifications|[endUserNotification](../resources/endusernotification.md) collection|Represents an end user's notification for an attack simulation training.|
|landingPages|[landingPage](../resources/landingpage.md) collection|Represents an attack simulation training landing page.|
|loginPages|[loginPage](../resources/loginpage.md) collection|Represents an attack simulation training login page.|
|operations|[attackSimulationOperation](../resources/attacksimulationoperation.md) collection|Represents an attack simulation training operation.|
|payloads|[payload](../resources/payload.md) collection|Represents an attack simulation training campaign payload in a tenant.|
|simulationAutomations|[simulationAutomation](../resources/simulationautomation.md) collection|Represents simulation automation created to run on a tenant.|
|simulations|[simulation](../resources/simulation.md) collection|Represents an attack simulation training campaign in a tenant.|
|trainings|[training](../resources/training.md) collection|Represents details about attack simulation trainings.|
|trainingCampaigns|[trainingCampaign](../resources/trainingcampaign.md) collection|Represents a training campaign in a tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.attackSimulationRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attackSimulationRoot"
}
```
