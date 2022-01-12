---
title: "accessReviewHistoryInstance resource type"
description: "Represents a recurrence of an `accessReviewHistoryDefinition`."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 Represents an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) recurrence. If the parent [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) is a recurring history definition, instances represent each recurrence. A history definition that does not recur will have exactly one instance.

 Every **accessReviewHistoryInstance** along with its associated **accessReviewHistoryDefinition** contain the properties **reviewHistoryPeriodStartDateTime**, **reviewHistoryPeriodEndDateTime**, **decisions**, **scheduleSettings**, and **scopes**. These properties are used when scheduling recurrences as well as selecting review data and can be modified. Each **accessReviewHistoryInstance** object and data is only available for 30 days. Once an **accessReviewHistoryInstance** status has been moved to `done` a link can be generated to retrieve the instance's data by calling [generateDownloadUri](../api/accessreviewhistorydefinition-generatedownloaduri.md) on the parent [accessReviewHistoryDefinition](accessreviewhistorydefinition.md).

## Methods

| Method  | Return type | Description |
|:---|:---|:---|
|[List accessReviewHistoryInstances](../api/accessreviewhistoryinstance-list.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md) collection|Get a list of the [accessReviewHistoryInstance](accessreviewhistoryinstance.md) objects and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|downloadUri|String|Uri which can be used to retrieve review history data. This URI will be active for 24 hours after being generated.|
|expirationDateTime|DateTimeOffset|Timestamp when this instance and associated data expires and is deleted.|
|fulfilledDateTime|DateTimeOffset|Timestamp when all of the available data for this instance was collected. This will be set after this instance's status is set to `done`.|
|id|String|The assigned unique identifier of an access review history instance.|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|Timestamp, reviews ending on or before this date will be included in the fetched history data.|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|Timestamp, reviews starting on or after this date will be included in the fetched history data.|
|runDateTime|DateTimeOffset|Timestamp when the instance's history data is scheduled to be generated.|
|status|String collection|Represents the status of the review history data collection. Possible values are: `done`, `inprogress`, `error`, `requested`.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewHistoryInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.accessReviewHistoryInstance",
  "id": "String (identifier)",
  "reviewHistoryPeriodStartDateTime": "String (timestamp)",
  "reviewHistoryPeriodEndDateTime": "String (timestamp)",
  "status": "String",
  "runDateTime": "String (timestamp)",
  "fulfilledDateTime": "String (timestamp)",
  "downloadUri": "String",
  "expirationDateTime": "String (timestamp)"
}
```
