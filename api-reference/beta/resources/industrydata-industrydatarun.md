---
title: "industryDataRun resource type"
description: "A pipeline run containing data for all subordinate activities."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataRun resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A pipeline run containing data for all subordinate activities.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List industryDataRuns](../api/industrydata-industrydatatenant-list-runs.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) collection|Get a list of the [industryDataRun](../resources/industrydata-industrydatarun.md) objects and their properties.|
|[Create industryDataRun](../api/industrydata-industrydatatenant-post-runs.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md)|Create a new [industryDataRun](../resources/industrydata-industrydatarun.md) object.|
|[Get industryDataRun](../api/industrydata-industrydatarun-get.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md)|Read the properties and relationships of an [industryDataRun](../resources/industrydata-industrydatarun.md) object.|
|[Update industryDataRun](../api/industrydata-industrydatarun-update.md)|[microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md)|Update the properties of an [industryDataRun](../resources/industrydata-industrydatarun.md) object.|
|[Delete industryDataRun](../api/industrydata-industrydatatenant-delete-runs.md)|None|Deletes an [industryDataRun](../resources/industrydata-industrydatarun.md) object.|
|[getStatistics](../api/industrydata-industrydatarun-getstatistics.md)|[microsoft.graph.industryData.industryDataRunStatistics](../resources/industrydata-industrydatarunstatistics.md)|Calculate statistics for the runGroup.|
|[getStatistics](../api/industrydata-industrydatarun-getstatistics.md)|[microsoft.graph.industryData.industryDataRunStatistics](../resources/industrydata-industrydatarunstatistics.md)|Calculate statistics for the runGroup.|
|[List activities](../api/industrydata-industrydatarun-list-activities.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection|Get the industryDataRunActivity resources from the activities navigation property.|
|[Create industryDataRunActivity](../api/industrydata-industrydatarun-post-activities.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)|Create a new industryDataRunActivity object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockingError|[microsoft.graph.publicError](../resources/publicerror.md)|An error object to diagnose critical failures in the run.|
|displayName|String|The name of the run for rendering in a user interface.|
|endDateTime|DateTimeOffset|The time the run finished in ISO 8601 format, or null if the run is still in-progress.|
|startDateTime|DateTimeOffset|The time the run started in ISO 8601 format.|
|status|industryDataRunStatus|Current status of the run.The possible values are: `running`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection|The set of activities executed during the run.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataRun",
  "openType": false
}
-->
``` json
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

