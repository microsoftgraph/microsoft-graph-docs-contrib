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

Represents an abstract base type for all activity types. Activities provide read-only information about the run of flows either in the past or currently running.

Industry data automates a run every 12 hours. Each of these runs is represented by an [industryDataRun](../resources/industrydata-industrydatarun.md). All flows that are active at the time of the run start are included in the run.

Individual flows are represented by this resource.

Status:

- `inProgress`: Actively executing
- `completed`: Completed without any errors or warnings
- `completedWithErrors`: Completed but errors were found
- `completedWithWarnings`: Completed but only warnings were found
- `skipped`: Activity added after Run started
- `failed`: Canceled by system

## Methods

| Method                                                                                   | Return type                                                                                                             | Description                                                                                                                         |
| :--------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| [List industryDataRunActivities](../api/industrydata-industrydatarun-list-activities.md) | [microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection | Get a list of the [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) objects and their properties.     |
| [Get industryDataRunActivity](../api/industrydata-industrydatarunactivity-get.md)        | [microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)            | Read the properties and relationships of an [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) object. |

## Properties

| Property      | Type                                                       | Description                                                                                                                                                                    |
| :------------ | :--------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockingError | [microsoft.graph.publicError](../resources/publicerror.md) | An error object to diagnose critical failures in an activity.                                                                                                                  |
| displayName   | String                                                     | The name of the running flow.                                                                                                                                           |
| status        | industryDataActivityStatus                                 | The current status of the activity. The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                                      | Description                      |
| :----------- | :------------------------------------------------------------------------ | :------------------------------- |
| activity     | [industryDataActivity](../resources/industrydata-industrydataactivity.md) | The flow this activity executed. |

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
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "status": "String"
}
```
