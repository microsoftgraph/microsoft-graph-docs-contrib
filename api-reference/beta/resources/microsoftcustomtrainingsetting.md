---
title: "microsoftCustomTrainingSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# microsoftCustomTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|**TODO: Add Description**|
|settingType|trainingSettingType|**TODO: Add Description** Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|
|trainingAssignmentMappings|[microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md) collection|**TODO: Add Description**|
|trainingCompletionDuration|trainingCompletionDuration|**TODO: Add Description**.The possible values are: `weekly`, `biWeekly`, `monthly`, `unknownFutureValue`.|

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

