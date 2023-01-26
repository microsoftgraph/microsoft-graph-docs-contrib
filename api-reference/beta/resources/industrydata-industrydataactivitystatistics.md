---
title: "industryDataActivityStatistics resource type"
description: "Represents an abstract base type for statistics for a single activity within a run."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataActivityStatistics resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for statistics for a single activity within a run.

Base type of [inboundActivityResults](industrydata-inboundactivityresults.md).

## Properties

| Property    | Type                       | Description                                                                                                                                                                                  |
| :---------- | :------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activityId  | String                     | The identifier for the activity that is being reported on.                                                                                                                                   |
| displayName | String                     | The display name of the underlying flow.                                                                                                         |
| status      | microsoft.graph.industryData.industryDataActivityStatus | The latest status of the activity in the run. The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataActivityStatistics"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivityStatistics",
  "activityId": "String",
  "displayName": "String",
  "status": "String"
}
```
