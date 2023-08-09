---
title: "inboundActivityResults resource type"
description: "Represents results of a single run of an inbound flow."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# inboundActivityResults resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents results of a single run of an inbound flow.

Inherits from [industryDataActivityStatistics](industrydata-industrydataactivitystatistics.md).

## Properties

| Property              | Type                                                                                                                     | Description                                                                                                                                                                                                                                                                                         |
| :-------------------- | :----------------------------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| activityId            | String                                                                                                                   | The identifier for the activity that is being reported on. Inherited from [industryDataActivityStatistics](industrydata-industrydataactivitystatistics.md).                                                                                                                                         |
| displayName           | String                                                                                                                   | The display name of the underlying flow. Inherited from [industryDataActivityStatistics](industrydata-industrydataactivitystatistics.md).                                                                                                                                                           |
| errors                | Int32                                                                                                                    | Number of errors encountered while processing the inbound flow.                                                                                                                                                                                                                                     |
| groups                | [microsoft.graph.industryData.industryDataRunEntityCountMetric](industrydata-industrydatarunentitycountmetric.md)        | Counts of active and inactive groups processed by the inbound flow.                                                                                                                                                                                                                                 |
| matchedPeopleByRole   | [microsoft.graph.industryData.industryDataRunRoleCountMetric](industrydata-industrydatarunrolecountmetric.md) collection | Number of people matched to an Azure Active Directory user, by role.                                                                                                                                                                                                                                |
| memberships           | [microsoft.graph.industryData.industryDataRunEntityCountMetric](industrydata-industrydatarunentitycountmetric.md)        | Counts of active and inactive memberships processed by the inbound flow.                                                                                                                                                                                                                            |
| organizations         | [microsoft.graph.industryData.industryDataRunEntityCountMetric](industrydata-industrydatarunentitycountmetric.md)        | Counts of active and inactive organizations processed by the inbound flow.                                                                                                                                                                                                                          |
| people                | [microsoft.graph.industryData.industryDataRunEntityCountMetric](industrydata-industrydatarunentitycountmetric.md)        | Counts of active and inactive people processed by the inbound flow.                                                                                                                                                                                                                                 |
| status                | microsoft.graph.industryData.industryDataActivityStatus                                                                                               | The latest status of the activity in the run group. Inherited from [industryDataActivityStatistics](industrydata-industrydataactivitystatistics.md). The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`. |
| unmatchedPeopleByRole | [microsoft.graph.industryData.industryDataRunRoleCountMetric](industrydata-industrydatarunrolecountmetric.md) collection | Number of people not matched to an Azure Active Directory user, by role.                                                                                                                                                                                                                             |
| warnings              | Int32                                                                                                                    | Number of warnings encountered while processing the inbound flow.                                                                                                                                                                                                                                   |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.inboundActivityResults"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.inboundActivityResults",
  "activityId": "String",
  "displayName": "String",
  "errors": "Int32",
  "groups": {
    "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
  },
  "matchedPeopleByRole": [
    {
      "@odata.type": "microsoft.graph.industryData.industryDataRunRoleCountMetric"
    }
  ],
  "memberships": {
    "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
  },
  "organizations": {
    "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
  },
  "people": {
    "@odata.type": "microsoft.graph.industryData.industryDataRunEntityCountMetric"
  },
  "status": "String",
  "unmatchedPeopleByRole": [
    {
      "@odata.type": "microsoft.graph.industryData.industryDataRunRoleCountMetric"
    }
  ],
  "warnings": "Int32"
}
```
