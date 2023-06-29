---
title: "industryDataRun resource type"
description: "Represents an ephemeral run that contains data for all subordinate activities performed by the system."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# industryDataRun resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an ephemeral run that contains data for all subordinate activities performed by the system. Industry data automates a run every 12 hours. Each of these operations is represented by an **industryDataRun** resource. All flows that are active at the time of the run start are included in the run. The individual flows are represented by an [industryDataRunActivity](industrydata-industrydatarunactivity.md) resource.

During a run, the data supplied is validated, bringing in good data to the data lake and flagging bad data. For more information about data validation, see [Validation rules and descriptions](/schooldatasync/validation-rules-and-descriptions). To determine the health of the data, it goes through data matching and validation rules to help safeguard required and optional data. Good data goes into the data lake. Data that doesn't pass validation is identified as errors or warnings and isn't sent to the data lake. The following list shows possible results for a run:

- `running`: Run is actively running.
- `completed`: Run completed without any errors or warnings.
- `completedWithErrors`: Run completed but errors were found. Error is a record where the required data didn't pass a data matching and/or validation rule and therefore, was removed and not sent to the data lake.
- `completedWithWarnings`: Run completed but only warnings were found. Warning is a value on a record where optional data didn't pass a data matching and/or validation rule. The value was removed but the record was sent to the data lake.
- `failed`: Run canceled by the system.

For details about how statistics can assist with health and monitoring a run group, see [industryDataRun: getStatistics](../api/industrydata-industrydatarun-getstatistics.md).

## Methods

| Method                                                                | Return type                                                                                         | Description                                                                                            |
| :-------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| [List industryDataRuns](../api/industrydata-industrydatarun-list.md)  | [microsoft.graph.industryData.industryDataRun](industrydata-industrydatarun.md) collection          | Get a list of the [industryDataRun](industrydata-industrydatarun.md) objects and their properties.     |
| [Get industryDataRun](../api/industrydata-industrydatarun-get.md)     | [microsoft.graph.industryData.industryDataRun](industrydata-industrydatarun.md)                     | Read the properties and relationships of an [industryDataRun](industrydata-industrydatarun.md) object. |
| [getStatistics](../api/industrydata-industrydatarun-getstatistics.md) | [microsoft.graph.industryData.industryDataRunStatistics](industrydata-industrydatarunstatistics.md) | Calculate statistics for a run group.                                                                  |

## Properties

| Property      | Type                          | Description                                                                                                                                                                                                                                                   |
| :------------ | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| blockingError | [publicError](publicerror.md) | An error object to diagnose critical failures in the run.                                                                                                                                                                                                     |
| displayName   | String                        | The name of the run for rendering in a user interface.                                                                                                                                                                                                        |
| endDateTime   | DateTimeOffset                | The date and time when the run finished or null if the run is still in-progress. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`. |
| startDateTime | DateTimeOffset                | The date and time when the run started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on `Jan 1, 2014 is 2014-01-01T00:00:00Z`.                                          |
| status        | microsoft.graph.industryData.industryDataRunStatus         | The current status of the run. The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.                                                                                               |

## Relationships

| Relationship | Type                                                                                                       | Description                                     |
| :----------- | :--------------------------------------------------------------------------------------------------------- | :---------------------------------------------- |
| activities   | [microsoft.graph.industryData.industryDataRunActivity](industrydata-industrydatarunactivity.md) collection | The set of activities performed during the run. |

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
