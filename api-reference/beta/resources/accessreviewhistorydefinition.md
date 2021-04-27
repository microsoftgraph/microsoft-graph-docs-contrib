---
title: "accessReviewHistoryDefinition resource types"
description: "Represents a collection of access review history data."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An accessReviewHistoryDefinition represents a collection of access review history data and the scopes used to collect that data. A accessReviewHistoryDefinition's reviewHistoryPeriodStartDateTime, reviewHistoryPeriodEndDateTime, decisions, and scopes properties are used when selecting review history data and all can be modified. Each accessReviewHistoryDefinition object is only available for 30 days.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewHistoryDefinitions](../api/accessreviewhistorydefinition-list.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) objects and their properties.|
|[Create accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-create.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistorydefinition-generatedownloaduri.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Generates a uri which can be used to retrieve review history data.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](useridentity.md)| User who created this review history definition. |
|createdDateTime|DateTimeOffset|Timestamp when the access review definition was created.|
|decisions|String collection|Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: `approve`, `deny`, `dontKnow`, `notReviewed`, and `notNotified`.|
|displayName|String|Name for the access review history data collection. Required on create.|
|downloadUri|String|Uri which can be used to retrieve review history data. This URI will be active for 24 hours after being generated.|
|fulfilledDateTime|DateTimeOffset|Timestamp when all of the available data for this definition was collected. This will be set once this defintion's status is set to `done`.|
|id|String|The assigned unique identifier of an access review history definition. Optional on create.|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|Timestamp, reviews starting on or after this date will be included in the fetched history data. Required on create.|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|	Timestamp, reviews starting on or before this date will be included in the fetched history data. Required on create.|
|scopes| Collection of [accessreviewqueryscope](accessreviewqueryscope.md)  |Used to scope what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. See [accessreviewqueryscope](accessreviewqueryscope.md). Required on create.|
|status|String collection|Represents the status of the review history data collection. Possible values are: `done`, `inprogress`, `error`, `requested`.|

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
  "decisions": [
    {
      "@odata.type": "String"
    }
  ],
  "status": "String",
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
  ]
}
```
