---
title: "noTrainingSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# noTrainingSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [trainingSetting](../resources/trainingsetting.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|settingType|trainingSettingType|**TODO: Add Description** Inherited from [trainingSetting](../resources/trainingsetting.md).The possible values are: `microsoftCustom`, `microsoftManaged`, `noTraining`, `custom`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

