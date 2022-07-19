---
title: "industryDataActivityStatistics resource type"
description: "Represents statistics for a single activity within the runGroup."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataActivityStatistics resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents statistics for a single activity within the runGroup.
This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityId|String|The identifier for the activity that is being reported on.|
|displayName|String|The displayName of the underlying flow.|
|status|industryDataActivityStatus|The latest status of the activity in the runGroup.The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataActivityStatistics"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivityStatistics",
  "activityId": "String",
  "displayName": "String",
  "status": "String"
}
```

