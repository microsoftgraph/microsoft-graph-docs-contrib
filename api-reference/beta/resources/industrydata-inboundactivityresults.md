---
title: "inboundActivityResults resource type"
description: "Represents results of a single Run of an Inbound Flow."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inboundActivityResults resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents results of a single Run of an Inbound Flow.


Inherits from [industryDataActivityStatistics](../resources/industrydata-industrydataactivitystatistics.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityId|String|The identifier for the activity that is being reported on. Inherited from [industryDataActivityStatistics](../resources/industrydata-industrydataactivitystatistics.md).|
|displayName|String|The displayName of the underlying flow. Inherited from [industryDataActivityStatistics](../resources/industrydata-industrydataactivitystatistics.md).|
|errors|Int32|Number of errors encountered while processing the Inbound Flow.|
|groups|[microsoft.graph.industryData.industryDataRunEntityCountMetric](../resources/industrydata-industrydatarunentitycountmetric.md)|Counts of active and inactive Groups processed by the Inbound Flow.|
|matchedPeopleByRole|[microsoft.graph.industryData.industryDataRunRoleCountMetric](../resources/industrydata-industrydatarunrolecountmetric.md) collection|Number of people matched to an AAD user, by role.|
|memberships|[microsoft.graph.industryData.industryDataRunEntityCountMetric](../resources/industrydata-industrydatarunentitycountmetric.md)|Counts of active and inactive Memberships processed by the Inbound Flow.|
|organizations|[microsoft.graph.industryData.industryDataRunEntityCountMetric](../resources/industrydata-industrydatarunentitycountmetric.md)|Counts of active and inactive Organizations processed by the Inbound Flow.|
|people|[microsoft.graph.industryData.industryDataRunEntityCountMetric](../resources/industrydata-industrydatarunentitycountmetric.md)|Counts of active and inactive People processed by the Inbound Flow.|
|status|industryDataActivityStatus|The latest status of the activity in the runGroup. Inherited from [industryDataActivityStatistics](../resources/industrydata-industrydataactivitystatistics.md).The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.|
|unmatchedPeopleByRole|[microsoft.graph.industryData.industryDataRunRoleCountMetric](../resources/industrydata-industrydatarunrolecountmetric.md) collection|Number of people not matched to an AAD user, by role.|
|warnings|Int32|Number of warnings encountered while processing the Inbound Flow.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.inboundActivityResults"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.inboundActivityResults",
  "activityId": "String",
  "displayName": "String",
  "status": "String",
  "errors": "Integer",
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
  "unmatchedPeopleByRole": [
    {
      "@odata.type": "microsoft.graph.industryData.industryDataRunRoleCountMetric"
    }
  ],
  "warnings": "Integer"
}
```

