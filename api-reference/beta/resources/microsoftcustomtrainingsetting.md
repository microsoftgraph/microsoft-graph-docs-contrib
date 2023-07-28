---
title: "microsoftCustomTrainingSetting resource type"
description: "Represents a Microsoft custom training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# microsoftCustomTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft custom training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|Completion date time of the training. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|settingType|trainingSettingType|Type of training setting.Here admin can choose which setting to use to configure trainings. The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|
|trainingAssignmentMappings|[microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md) collection|Training mapping contains mapping details of the associated training.|
|trainingCompletionDuration|trainingCompletionDuration|The training completion duration that needs to be provided before scheduling the training. Possible values are: `weekly`, `biWeekly`, `monthly`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftCustomTrainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftCustomTrainingSetting",
  "settingType": "String",
  "trainingAssignmentMappings": [
    {
      "@odata.type": "microsoft.graph.microsoftTrainingAssignmentMapping"
    }
  ],
  "trainingCompletionDuration": "String",
  "completionDateTime": "String (timestamp)"
}
```
