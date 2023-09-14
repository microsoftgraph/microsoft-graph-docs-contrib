---
title: "microsoftTrainingAssignmentMapping resource type"
description: "Represents a Microsoft training assignment mapping."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# microsoftTrainingAssignmentMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft training assignment mapping.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|trainingAssignedTo collection|A user collection that specifies to whom the training should be assigned. Possible values are: `none`, `allUsers`, `clickedPayload`, `compromised`, `reportedPhish`, `readButNotClicked`, `didNothing`, `unknownFutureValue`. |
|completionDateTime|DateTimeOffset|The completion date time of the training. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|settingType|trainingSettingType|Type of training setting. The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|
|trainingCompletionDuration|trainingCompletionDuration|The training completion duration that needs to be provided before scheduling the training. Possible values are: `week`, `fortnite`, `month`, `unknownFutureValue`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|training|[training](../resources/training.md)|Represents training details.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftTrainingAssignmentMapping"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTrainingAssignmentMapping",
  "assignedTo": ["String"],
  "completionDateTime": "String (timestamp)",
  "settingType": "String",
  "trainingCompletionDuration": "String"
}
```
