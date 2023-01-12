---
title: "industryDataRunActivity resource type"
description: "Represents an abstract base type for all activity types."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataRunActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for all activity types. The **industryDataRunActivity** represents the current or file state of the activity within a single [industryDataRun](industrydata-industrydatarun.md).

- `inProgress`: The activity is being performed by the current [industryDataRun](industrydata-industrydatarun.md).
- `completed`: The activity was successfully performed.
- `completedWithErrors`: The activity ran to completion but encountered one or more error conditions during execution.
- `completedWithWarnings`: The activity ran to completion but encountered one or more warning conditions during execution.
- `skipped`: The activity was not performed by the [industryDataRun](industrydata-industrydatarun.md).
- `failed`: The activity encountered an unrecoverable error during execution.

## Properties

| Property      | Type                                          | Description                                                                                                                                                                        |
| :------------ | :-------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockingError | [microsoft.graph.publicError](publicerror.md) | An error object to diagnose critical failures in an activity.                                                                                                                      |
| displayName   | String                                        | The name of the running flow.                                                                                                                                                      |
| status        | industryDataActivityStatus                    | The current status of the activity. The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                         | Description                      |
| :----------- | :----------------------------------------------------------- | :------------------------------- |
| activity     | [industryDataActivity](industrydata-industrydataactivity.md) | The flow this activity executed. |

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
