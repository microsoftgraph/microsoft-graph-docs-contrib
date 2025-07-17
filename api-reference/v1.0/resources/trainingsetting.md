---
title: "trainingSetting resource type"
description: "An abstract type that represents a training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# trainingSetting resource type

Namespace: microsoft.graph

An abstract type that represents a training setting for simulation creation.

Base type of [customTrainingSetting](../resources/customtrainingsetting.md), [microsoftCustomTrainingSetting](../resources/microsoftcustomtrainingsetting.md), [microsoftManagedTrainingSetting](../resources/microsoftmanagedtrainingsetting.md), [microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md), and [noTrainingSetting](../resources/notrainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|settingType|trainingSettingType|Type of setting. Possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.trainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingSetting",
  "settingType": "String"
}
```
