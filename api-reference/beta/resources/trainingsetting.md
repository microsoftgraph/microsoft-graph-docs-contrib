---
title: "trainingSetting resource type"
description: "An abstract type that represents a training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# trainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a training setting for simulation creation.

Base type of [customTrainingSetting](../resources/customtrainingsetting.md), [microsoftCustomTrainingSetting](../resources/microsoftcustomtrainingsetting.md), [microsoftManagedTrainingSetting](../resources/microsoftmanagedtrainingsetting.md), [microsoftTrainingAssignmentMapping](../resources/microsofttrainingassignmentmapping.md), and [noTrainingSetting](../resources/notrainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|settingType|trainingSettingType|Type of setting. Possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
