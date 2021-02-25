---
title: "accessReview resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# accessReview resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List accessReviews](../api/accessreview-list.md)|[accessReview](../resources/accessreview.md) collection|Get a list of the [accessReview](../resources/accessreview.md) objects and their properties.|
|[Create accessReview](../api/accessreview-post-accessreviews.md)|[accessReview](../resources/accessreview.md)|Create a new [accessReview](../resources/accessreview.md) object.|
|[Get accessReview](../api/accessreview-get.md)|[accessReview](../resources/accessreview.md)|Read the properties and relationships of an [accessReview](../resources/accessreview.md) object.|
|[Update accessReview](../api/accessreview-update.md)|[accessReview](../resources/accessreview.md)|Update the properties of an [accessReview](../resources/accessreview.md) object.|
|[Delete accessReview](../api/accessreview-delete.md)|None|Deletes an [accessReview](../resources/accessreview.md) object.|
|[stop](../api/accessreview-stop.md)|None|**TODO: Add Description**|
|[sendReminder](../api/accessreview-sendreminder.md)|None|**TODO: Add Description**|
|[resetDecisions](../api/accessreview-resetdecisions.md)|None|**TODO: Add Description**|
|[applyDecisions](../api/accessreview-applydecisions.md)|None|**TODO: Add Description**|
|[List decisions](../api/accessreview-list-decisions.md)|[accessReviewDecision](../resources/accessreviewdecision.md) collection|Get the accessReviewDecision resources from the decisions navigation property.|
|[Create accessReviewDecision](../api/accessreview-post-decisions.md)|[accessReviewDecision](../resources/accessreviewdecision.md)|Create a new accessReviewDecision object.|
|[List instances](../api/accessreview-list-instances.md)|[accessReview](../resources/accessreview.md) collection|Get the accessReview resources from the instances navigation property.|
|[Create accessReview](../api/accessreview-post-instances.md)|[accessReview](../resources/accessreview.md)|Create a new accessReview object.|
|[List myDecisions](../api/accessreview-list-mydecisions.md)|[accessReviewDecision](../resources/accessreviewdecision.md) collection|Get the accessReviewDecision resources from the myDecisions navigation property.|
|[Create accessReviewDecision](../api/accessreview-post-mydecisions.md)|[accessReviewDecision](../resources/accessreviewdecision.md)|Create a new accessReviewDecision object.|
|[List reviewers](../api/accessreview-list-reviewers.md)|[accessReviewReviewer](../resources/accessreviewreviewer.md) collection|Get the accessReviewReviewer resources from the reviewers navigation property.|
|[Create accessReviewReviewer](../api/accessreview-post-reviewers.md)|[accessReviewReviewer](../resources/accessreviewreviewer.md)|Create a new accessReviewReviewer object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|businessFlowTemplateId|String|**TODO: Add Description**|
|createdBy|[userIdentity](../resources/useridentity.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|reviewedEntity|[identity](../resources/identity.md)|**TODO: Add Description**|
|reviewerType|String|**TODO: Add Description**|
|settings|[accessReviewSettings](../resources/accessreviewsettings.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|status|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|decisions|[accessReviewDecision](../resources/accessreviewdecision.md) collection|**TODO: Add Description**|
|instances|[accessReview](../resources/accessreview.md) collection|**TODO: Add Description**|
|myDecisions|[accessReviewDecision](../resources/accessreviewdecision.md) collection|**TODO: Add Description**|
|reviewers|[accessReviewReviewer](../resources/accessreviewreviewer.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReview",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReview",
  "id": "String (identifier)",
  "displayName": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "businessFlowTemplateId": "String",
  "reviewerType": "String",
  "description": "String",
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewSettings"
  },
  "reviewedEntity": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

