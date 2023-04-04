---
title: "microsoftManagedTrainingSetting resource type"
description: "Microsoft managed training setting for simulation creation."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# microsoftManagedTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft tmanaged training setting for simulation creation.

Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completionDateTime|DateTimeOffset|Training completion date|
|settingType|trainingSettingType|Setting type. Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|
|trainingCompletionDuration|trainingCompletionDuration|Completion duration (to be provided before schedule).The possible values are: `weekly`, `biWeekly`, `monthly`, `unknownFutureValue`.|

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
  "settingType": "String",
  "trainingCompletionDuration": "String",
  "completionDateTime": "String (timestamp)"
}
```

