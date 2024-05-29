---
title: "microsoftManagedTrainingSetting resource type"
description: "Represents a Microsoft managed training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# microsoftManagedTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft managed training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|The completion date for the training. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|settingType|trainingSettingType|The setting type. The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`. Inherited from [trainingSetting](../resources/trainingsetting.md).|
|trainingCompletionDuration|trainingCompletionDuration|The training completion duration that needs to be provided before scheduling the training. The possible values are: `week`, `fortnite`, `month`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.microsoftManagedTrainingSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftManagedTrainingSetting",
  "completionDateTime": "String (timestamp)",
  "settingType": "String",
  "trainingCompletionDuration": "String"
}
```
