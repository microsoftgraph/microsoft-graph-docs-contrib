---
title: "accessPackageAssignmentReviewSettings complex type"
description: "Used for the access reviews of an access package's assignments."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# accessPackageAssignmentReviewSettings complex type

Namespace: microsoft.graph

Settings configured in an [access package assignment policy](accesspackageassignmentpolicy.md) for the access reviews of assignments to an access package that were made through that policy. Provides settings to select reviewers of those assignments, and how often the assignments must be reviewed.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationBehavior|accessReviewExpirationBehavior|The default decision to apply if the access is not reviewed. The possible values are: `keepAccess`, `removeAccess`, `acceptAccessRecommendation`, `unknownFutureValue`.|
|fallbackReviewers|[subjectSet](../resources/subjectset.md) collection|This collection specifies the users who will be the fallback reviewers when the primary reviewers don't respond.|
|isEnabled|Boolean|If `true`, access reviews are required for assignments through this policy.|
|isRecommendationEnabled|Boolean|Specifies whether to display recommendations to the reviewer. The default value is `true`.|
|isReviewerJustificationRequired|Boolean|Specifies whether the reviewer must provide justification for the approval. The default value is `true`.|
|isSelfReview|Boolean|Specifies whether the principals can review their own assignments.|
|primaryReviewers|[subjectSet](../resources/subjectset.md) collection|This collection specifies the users or group of users who will review the access package assignments.|
|schedule|[entitlementManagementSchedule](../resources/entitlementmanagementschedule.md)|When the first review should start and how often it should recur.|

## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageAssignmentReviewSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageAssignmentReviewSettings",
  "expirationBehavior": "String",
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "isEnabled": "Boolean",
  "isRecommendationEnabled": "Boolean",
  "isReviewerJustificationRequired": "Boolean",
  "isSelfReview": "Boolean",
  "primaryReviewers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "schedule": {
    "@odata.type": "microsoft.graph.entitlementManagementSchedule"
  }
  
}
```


