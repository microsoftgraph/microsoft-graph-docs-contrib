---
title: "industryDataRunStatistics resource type"
description: "Represents statistics for a single runGroup."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataRunStatistics resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents statistics for a single runGroup.

## Properties

| Property           | Type                                                                                                                                  | Description                                                                                                                                                        |
| :----------------- | :------------------------------------------------------------------------------------------------------------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activityStatistics | [microsoft.graph.industryData.industryDataActivityStatistics](../resources/industrydata-industrydataactivitystatistics.md) collection | Collection of stats for each activity included in this run.                                                                                                        |
| inboundTotals      | [microsoft.graph.industryData.aggregatedInboundStatistics](../resources/industrydata-aggregatedinboundstatistics.md)                  | Aggregate statistics for all inbound flows.                                                                                                                        |
| runId              | String                                                                                                                                | The Id of the underlying runGroup for the stats.                                                                                                                   |
| status             | industryDataRunStatus                                                                                                                 | The latest status of the runGroup.The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.industryDataRunStatistics"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunStatistics",
  "activityStatistics": [
    {
      "@odata.type": "microsoft.graph.industryData.inboundActivityResults"
    }
  ],
  "inboundTotals": {
    "@odata.type": "microsoft.graph.industryData.aggregatedInboundStatistics"
  },
  "runId": "String",
  "status": "String"
}
```
