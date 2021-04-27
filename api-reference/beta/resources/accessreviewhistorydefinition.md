---
title: "accessReviewHistoryDefinition resource types"
description: "Represents a collection of access review history data."
author: "leherpel"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An accessReviewHistoryDefinition represents a collection of access review history data and the filters used to collect that data. A accessReviewHistoryDefinition's reviewHistoryPeriodStartDateTime, reviewHistoryPeriodEndDateTime, decisions, and scopes properties are used when selecting review history data and all can be modified.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviewHistoryDefinitions](../api/accessreviewhistorydefinition-list.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) objects and their properties.|
|[Create accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-create.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistorydefinition-generatedownloaduri.md)|[accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md)|Generates a uri which can be used to retrieve review history data.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[userIdentity](../resources/useridentity.md)| User who created this review history definition. |
|createdDateTime|DateTimeOffset|Timestamp when review definition was created.|
|decisions|String collection|Determines which review decisions will be included in the fetched review history data if specified. Optional on create. All decisions will be included by default if no decisions are provided on create. Possible values are: `approve`, `deny`, `dontKnow`, `notReviewed`, and `notNotified`.|
|displayName|String|Name for the access review history data collection. Required on create.|
|downloadUri|String|Uri which can be used to retrieve review history data.|
|fulfilledDateTime|DateTimeOffset|Timestamp when all of the available data for this definition was collected. This will be set once this defintion's status is set to `done`.|
|id|String|The assigned unique identifier of an access review history definition. Optional on create.|
|reviewHistoryPeriodEndDateTime|DateTimeOffset|Timestamp, reviews starting on or after this date will be included in the fetched history data. Required on create.|
|reviewHistoryPeriodStartDateTime|DateTimeOffset|	Timestamp, reviews starting on or before this date will be included in the fetched history data. Required on create.|
|scopes|[accessReviewScope](../resources/accessreviewscope.md) collection|Used to filter what reviews are included in the fetched history data. Fetches reviews whose scope matches with this provided scope. See [accessReviewScope](accessreviewscope.md). Required on create.|
|status|String collection|Represents the status of the review history data collection. Possible values are: `done`, `inprogress`, `error`, `requested`.|

### Supported scope queries for accessReviewHistoryDefinition
The following are queries supported on an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) based on the [accessReviewScope](accessreviewscope.md). This dictates which type of review history data is included.

|Scenario| Query |
|--|--|
| Include every `accessReviewScheduleDefinition` review result on individual groups (excludes definitions scoped to all Microsoft 365 groups with guest users) | /identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')" |
| Include every `accessReviewScheduleDefinition` review result on an access package | /identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments') |



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
  "id": "b2cb022f-b7e1-40f3-9854-c65a40861c38",
  "displayName": "Last quarter's group reviews April 2021",
  "reviewHistoryPeriodStartDateTime": "2021-01-01T00:00:00Z",
  "reviewHistoryPeriodEndDateTime": "2021-04-05T00:00:00Z",
  "decisions": [
    "approve",
    "deny",
    "dontKnow",
    "notReviewed",
    "notNotified"
  ],
  "status": "requested",
  "createdDateTime": "2021-04-14T00:22:48.9392594Z",
  "fulfilledDateTime": null,
  "downloadUri": null,
  "createdBy": {
    "id": "673ad0d8-7b0e-4201-aaeb-74cdcbf22af9",
    "displayName": "Chris Green",
    "userPrincipalName": "ChrisGreen@shubhamermtest2.ccsctp.net"
  },
  "downloadUri": null,
  "scopes": [
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')",
      "queryRoot": null
    },  
    {
      "@odata.type": "#microsoft.graph.accessReviewQueryScope",
      "queryType": "MicrosoftGraph",     
      "query": "/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')",
      "queryRoot": null
    }
  ]
}
```
