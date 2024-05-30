---
title: "customTrainingSetting resource type"
description: "Represents a custom training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# customTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|trainingAssignedTo collection|A user collection that specifies to whom the training should be assigned. Possible values are: `none`, `allUsers`, `clickedPayload`, `compromised`, `reportedPhish`, `readButNotClicked`, `didNothing`, `unknownFutureValue`. |
|description|String|The description of the custom training setting.|
|displayName|String|The display name of the custom training setting.|
|durationInMinutes|String|Training duration.|
|settingType|trainingSettingType|Training setting type. Possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|
|url|String|The training URL.|

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
  "assignedTo": ["String"],
  "description": "String",
  "displayName": "String",
  "durationInMinutes": "String",
  "settingType": "String",
  "url": "String"
}
```
