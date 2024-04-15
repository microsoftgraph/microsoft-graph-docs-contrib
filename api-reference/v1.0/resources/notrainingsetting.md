---
title: "noTrainingSetting resource type"
description: "Represents a no-training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# noTrainingSetting resource type

Namespace: microsoft.graph

Represents a no-training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|settingType|trainingSettingType|The setting type. Possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.noTrainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.noTrainingSetting",
  "settingType": "String"
}
```
