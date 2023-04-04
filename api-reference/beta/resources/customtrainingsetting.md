---
title: "customTrainingSetting resource type"
description: "Custom training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# customTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom training setting for simulation creation

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedTo|trainingAssignedTo collection|Assigned to user detail.|
|description|String|Description|
|displayName|String|Name|
|durationInMinutes|String|Training duration.|
|settingType|trainingSettingType|Training setting type. Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|
|url|String|Training url.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customTrainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customTrainingSetting",
  "settingType": "String",
  "assignedTo": [
    "String"
  ],
  "url": "String",
  "displayName": "String",
  "description": "String",
  "durationInMinutes": "String"
}
```

