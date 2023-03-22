---
title: "industryDataRunStatistics resource type"
description: "Represents statistics for a single run."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataRunStatistics resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents statistics for a single run.

## Properties

| Property           | Type                                                                                                                     | Description                                                                                                                                                    |
| :----------------- | :----------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activityStatistics | [microsoft.graph.industryData.industryDataActivityStatistics](industrydata-industrydataactivitystatistics.md) collection | The collection of statistics for each activity included in this run.                                                                                           |
| inboundTotals      | [microsoft.graph.industryData.aggregatedInboundStatistics](industrydata-aggregatedinboundstatistics.md)                  | The aggregate statistics for all inbound flows.                                                                                                                |
| runId              | String                                                                                                                   | The ID of the underlying run for the statistics.                                                                                                               |
| status             | microsoft.graph.industryData.industryDataRunStatus                                                                                                    | The latest status of the run. The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

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
