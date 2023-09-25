---
title: "industryDataRunActivity resource type"
description: "An abstract base type for all activity types."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataRunActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type for all activity types. This resource represents the current or file state of the activity within a single [industryDataRun](industrydata-industrydatarun.md). Possible statuses for a run are:

- `inProgress`: The current [industryDataRun](industrydata-industrydatarun.md) is running the activity.
- `completed`: The activity was successfully run.
- `completedWithErrors`: The activity ran to completion but encountered one or more error conditions during the run.
- `completedWithWarnings`: The activity ran to completion but encountered one or more warning conditions during the run.
- `skipped`: The [industryDataRun](industrydata-industrydatarun.md) didn't run the activity.
- `failed`: The activity encountered an unrecoverable error during the run.

Base type of [inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) and [outboundFlowActivity](../resources/industrydata-outboundflowactivity.md).

## Properties

| Property      | Type                                                    | Description                                                                                                                                                                        |
| :------------ | :------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockingError | [microsoft.graph.publicError](publicerror.md)           | An error object to diagnose critical failures in an activity.                                                                                                                      |
| displayName   | String                                                  | The name of the running flow.                                                                                                                                                      |
| status        | microsoft.graph.industryData.industryDataActivityStatus | The current status of the activity. The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                                                      | Description                             |
| :----------- | :---------------------------------------------------------------------------------------- | :-------------------------------------- |
| activity     | [microsoft.graph.industryData.industryDataActivity](industrydata-industrydataactivity.md) | The flow that was run by this activity. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataRunActivity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunActivity",
  "blockingError": { "@odata.type": "microsoft.graph.publicError" },
  "displayName": "String",
  "status": "String"
}
```
