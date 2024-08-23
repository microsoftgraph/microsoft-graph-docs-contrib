---
title: "microsoftCustomTrainingSetting resource type"
description: "Represents a Microsoft custom training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# microsoftCustomTrainingSetting resource type

Namespace: microsoft.graph

Represents a Microsoft custom training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|The completion date and time of the training. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|settingType|trainingSettingType|Type of training setting that indicates which setting to use to configure a training. The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|
|trainingAssignmentMappings|[microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md) collection| The mapping details of the associated training.|
|trainingCompletionDuration|trainingCompletionDuration|The training completion duration that needs to be provided before scheduling the training. Possible values are: `week`, `fortnite`, `month`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftCustomTrainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftCustomTrainingSetting",
  "completionDateTime": "String (timestamp)",
  "settingType": "String",
  "trainingAssignmentMappings": [{"@odata.type": "microsoft.graph.microsoftTrainingAssignmentMapping"}],
  "trainingCompletionDuration": "String"
}
```
