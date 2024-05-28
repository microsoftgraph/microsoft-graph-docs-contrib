---
title: "microsoftTrainingAssignmentMapping resource type"
description: "Represents a Microsoft training assignment mapping."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
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
|settingType|trainingSettingType|Type of training setting. The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|training|[training](../resources/training.md)|Represents training details.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftTrainingAssignmentMapping"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftTrainingAssignmentMapping",
  "assignedTo": ["String"],
  "settingType": "String"
}
```
