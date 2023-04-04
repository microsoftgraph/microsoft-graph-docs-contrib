---
title: "trainingSetting resource type"
description: "Training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Training setting for simulation creation.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingType|trainingSettingType|Type of setting.The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|

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

