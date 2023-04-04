---
title: "microsoftTrainingAssignmentMapping resource type"
description: "Microsoft training assignment mapping."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# microsoftTrainingAssignmentMapping resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft training assignment mapping

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|trainingAssignedTo collection|Targetted users.|
|completionDateTime|DateTimeOffset|Completion date time.|
|settingType|trainingSettingType|Setting type. Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|
|trainingCompletionDuration|trainingCompletionDuration|Completion duration (to be completed before scheduling).The possible values are: `weekly`, `biWeekly`, `monthly`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|training|[training](../resources/training.md)|Training details.|

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
  "settingType": "String",
  "assignedTo": [
    "String"
  ],
  "trainingCompletionDuration": "String",
  "completionDateTime": "String (timestamp)"
}
```

