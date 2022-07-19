---
title: "industryDataRun resource type"
description: "A pipeline run containing data for all subordinate activities."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: resourcePageType
---

# industryDataRun resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of one or more activities.

IndustryData automates a Run every 12 hours. Each of these executions is represented by **industryDataRun**. All flows that are active at the time of the Run start are included in the Run.

The individual flows are represented by **industryDataRunActivity**.

_For more information see [IndustryDataRunActivity](industrydata-industrydatarunactivity)._

During a Run the data supplied is validated, bringing in good data to the Data Lake and flagging bad data. [See Validation Rules and Descriptions for additional information](https://docs.microsoft.com/schooldatasync/Validation-rules-and-descriptions).

To determine the health of the data, it is passed through data matching and validation rules to help safeguard required and optional data that is good only going into the Data Lake. Data that does not pass validation is identified as errors or warnings and is not sent to the Data Lake.

If there were no errors or warnings found, the result of the run will be `completed`.

If there are errors and warnings found, the result of the run will be `completedWithErrors`.

- Error is a record where the required data didn't pass a data matching and/or validation rule and therefore, was removed and not sent to the data lake.

If there are only warnings found, the result of the run will be `completedWithWarnings`.

- Warning is a value on a record where optional data didn't pass a data matching and or validation rule and the value was removed but the record was sent to the data lake.

Status:

- `running`: Actively executing
- `completed`: Completed without any errors or warnings
- `completedWithErrors`: Completed but errors were found
- `completedWithWarnings`: Completed but only warnings were found
- `failed`: Canceled by system

Statistics are available from _[IndustryDataRun-GetStatistics](../api/industrydata-industrydatarun-getstatistics.md)_ to assist with health and monitoring.

## Methods

| Method                                                                     | Return type                                                                                                             | Description                                                                                                         |
| :------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------ |
| [List industryDataRuns](../api/industrydata-industrydataroot-list-runs.md) | [microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection                 | Get a list of the [industryDataRun](../resources/industrydata-industrydatarun.md) objects and their properties.     |
| [Get industryDataRun](../api/industrydata-industrydatarun-get.md)          | [microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md)                            | Read the properties and relationships of an [industryDataRun](../resources/industrydata-industrydatarun.md) object. |
| [getStatistics](../api/industrydata-industrydatarun-getstatistics.md)      | [microsoft.graph.industryData.industryDataRunStatistics](../resources/industrydata-industrydatarunstatistics.md)        | Calculate statistics for the runGroup.                                                                              |
| [List activities](../api/industrydata-industrydatarun-list-activities.md)  | [microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection | Get the industryDataRunActivity resources from the activities navigation property.                                  |

## Properties

| Property      | Type                                                       | Description                                                                                                                                                |
| :------------ | :--------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------- |
| blockingError | [microsoft.graph.publicError](../resources/publicerror.md) | An error object to diagnose critical failures in the run.                                                                                                  |
| displayName   | String                                                     | The name of the run for rendering in a user interface.                                                                                                     |
| endDateTime   | DateTimeOffset                                             | The time the run finished in ISO 8601 format, or null if the run is still in-progress.                                                                     |
| startDateTime | DateTimeOffset                                             | The time the run started in ISO 8601 format.                                                                                                               |
| status        | industryDataRunStatus                                      | Current status of the run.The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |

## Relationships

| Relationship | Type                                                                                                                    | Description                                    |
| :----------- | :---------------------------------------------------------------------------------------------------------------------- | :--------------------------------------------- |
| activities   | [microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection | The set of activities executed during the run. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataRun",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRun",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "status": "String"
}
```
