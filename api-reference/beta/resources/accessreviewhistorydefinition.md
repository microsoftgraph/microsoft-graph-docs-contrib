---
title: "accessReviewHistoryDefinition resource types"
description: "Represents a collection of access review history data."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An **accessReviewHistoryDefinition** contains a list of [accessReviewHistoryInstance](accessReviewHistoryInstance.md) objects. Each recurrence of the history definition creates an instance. In the case of a one-time history definition, only one instance is created.

 A **accessReviewHistoryDefinition** along with its instances represent a collection of access review history data and the scopes used to collect that data.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewHistoryDefinitions](../api/accessreviewset-list-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) objects and their properties.|
|[Create accessReviewHistoryDefinition](../api/accessreviewset-post-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistorydefinition-generatedownloaduri.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Generates a URI for each unexpired [accessReviewHistoryInstance](accessReviewHistoryInstance.md) contained in this definition. The URI can be used to retrieve each instance's review history data.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](useridentity.md)| User who created this review history definition. |
|createdDateTime|DateTimeOffset|Timestamp when the access review definition was created.|
|decisions|String collection|Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: `approve`, `deny`, `dontKnow`, `notReviewed`, and `notNotified`.|
|displayName|String|Name for the access review history data collection. Required.|
|id|String|The assigned unique identifier of an access review history definition.|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|Timestamp, reviews ending on or before this date will be included in the fetched history data. Only required if `scheduleSettings` is not defined. |
|reviewHistoryPeriodStartDateTime|DateTimeOffset|Timestamp, reviews starting on or before this date will be included in the fetched history data. Only required if `scheduleSettings` is not defined.|
|scopes|[accessReviewQueryScope](accessreviewqueryscope.md) collection|Used to scope what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. Required.|
|status|String collection|Represents the status of the review history data collection. Possible values are: `done`, `inprogress`, `error`, `requested`.|
| instances |[accessReviewHistoryInstance](accessReviewHistoryInstance.md) collection|  Set of access review history instances for this access review definition. Definitions that do not recur will only have one instance; otherwise, there is an instance for each recurrence. |
| scheduleSettings  |[accessReviewHistoryScheduleSettings](accessReviewHistoryScheduleSettings.md)| The settings for a recurring access review history definition series. Only required if `reviewHistoryPeriodStartDateTime` or `reviewHistoryPeriodEndDateTime` are not defined.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|instances|[accessReviewHistoryInstance](accessreviewhistoryinstance.md) collection| If the `accessReviewHistoryDefinition` is a recurring definition, instances represent each recurrence. A definition that does not recur will have exactly one instance. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewHistoryDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.accessReviewHistoryDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "reviewHistoryPeriodStartDateTime": "String (timestamp)",
  "reviewHistoryPeriodEndDateTime": "String (timestamp)",
  "status": "String",
  "decisions": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "fulfilledDateTime": "String (timestamp)",
  "downloadUri": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "scopes": [
    {
      "@odata.type": "microsoft.graph.accessReviewScope"
    }
  ],
  "scheduleSettings": {
    "@odata.type": "microsoft.graph.accessReviewHistoryScheduleSettings"
  }
}
```
