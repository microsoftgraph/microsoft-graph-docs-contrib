---
title: "microsoftCustomTrainingSetting resource type"
description: "Microsoft custom training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# microsoftCustomTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft custom training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|Completion date time.|
|settingType|trainingSettingType|Type. Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|
|trainingAssignmentMappings|[microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md) collection|Training mapping|
|trainingCompletionDuration|trainingCompletionDuration|Completion duration(to be provided before scheduling).The possible values are: `weekly`, `biWeekly`, `monthly`, `unknownFutureValue`.|

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

