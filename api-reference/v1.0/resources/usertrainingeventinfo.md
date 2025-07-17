---
title: "userTrainingEventInfo resource type"
description: "Represents events of a training assigned to a user in an attack simulation and training campaign."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userTrainingEventInfo resource type

Namespace: microsoft.graph

Represents events of a training assigned to a user in an attack simulation and training campaign. Training events include assigning the training, updating the training in progress, and completing the training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name of the training.|
|latestTrainingStatus|trainingStatus|Latest status of the training assigned to the user. Possible values are: `unknown`, `assigned`, `inProgress`, `completed`, `overdue`, `unknownFutureValue`.|
|trainingAssignedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|Event details of the training when it was assigned to the user.|
|trainingCompletedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|Event details of the training when it was completed by the user.|
|trainingUpdatedProperties|[userTrainingContentEventInfo](../resources/usertrainingcontenteventinfo.md)|Event details of the training when it was updated/in-progress by the user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTrainingEventInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTrainingEventInfo",
  "displayName": "String",
  "latestTrainingStatus": "String",
  "trainingAssignedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  },
  "trainingCompletedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  },
  "trainingUpdatedProperties": {
    "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
  }
}
```
