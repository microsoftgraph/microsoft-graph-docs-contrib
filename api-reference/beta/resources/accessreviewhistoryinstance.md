---
title: "accessReviewHistoryInstance resource type"
description: "Represents a recurrence of an accessReviewHistoryDefinition object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 06/07/2024
---

# accessReviewHistoryInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

 Represents a recurrence of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object. A history definition that doesn't recur has exactly one instance.

 Every **accessReviewHistoryInstance** along with its associated **accessReviewHistoryDefinition** contain the properties **reviewHistoryPeriodStartDateTime**, **reviewHistoryPeriodEndDateTime**, **decisions**, **scheduleSettings**, and **scopes**. These properties are used when scheduling recurrences and selecting review data and can be modified. Each **accessReviewHistoryInstance** object and data is only available for 30 days. Once an **accessReviewHistoryInstance** status has been moved to `done`, a link can be generated to retrieve the instance's data by calling [generateDownloadUri](../api/accessreviewhistoryinstance-generatedownloaduri.md).

## Methods

|Method|Return type|Description|
|:-----|:----------|:----------|
|[List](../api/accessreviewhistorydefinition-list-instances.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md) collection|Retrieve a list of the [accessReviewHistoryInstance](accessreviewhistoryinstance.md) objects and their properties.|
|[Generate download URI](../api/accessreviewhistoryinstance-generatedownloaduri.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Generates a URI that can be used to retrieve the instance's review history data.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|downloadUri|String|Uri that can be used to retrieve review history data. This URI will be active for 24 hours after being generated. Required.|
|expirationDateTime|DateTimeOffset|Timestamp when this instance and associated data expires and the history is deleted. Required.|
|fulfilledDateTime|DateTimeOffset|Timestamp when all of the available data for this instance was collected. This will be set after this instance's status is set to `done`. Required.|
|id|String|The assigned unique identifier of an access review history instance. Read-only. Required.|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|The date and time for which reviews ended before this date are included in the fetched history data.|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|The date and time for which reviews started on or after this date are included in the fetched history data.|
|runDateTime|DateTimeOffset|The date and time when the instance's history data is scheduled to be generated.|
|status|accessReviewHistoryStatus|Represents the status of the review history data collection. The possible values are: `done`, `inProgress`, `error`, `requested`, `unknownFutureValue`. Once the **status** is marked as `done`, you can generate a link retrieve the instance's data by calling [generateDownloadUri](../api/accessreviewhistoryinstance-generatedownloaduri.md) method.|

## JSON representation

The following JSON representation shows the resource type.
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
