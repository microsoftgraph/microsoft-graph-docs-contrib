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

Used for the access reviews of access review assignments, configured in an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed.  

## Properties
|Property|Type|Description|
|:---|:---|:---|
|expirationBehavior|accessReviewExpirationBehavior|The default decision to apply if the access is not reviewed. The possible values are: `keepAccess`, `removeAccess`, `acceptAccessRecommendation`, `unknownFutureValue`.|
|fallbackReviewers|[subjectSet](../resources/subjectset.md) collection|This collection specifies the users who will be the fallback reviewers.|
|isEnabled|Boolean|If true, access reviews are required for assignments from this policy.|
|isRecommendationEnabled|Boolean|Specifies whether to display recommendations to the reviewer. The default value is `true`.|
|isReviewerJustificationRequired|Boolean|Specifies whether the reviewer must provide justification for the approval. The default value is `true`.|
|isSelfReview|Boolean|Who should be asked to do the review.|
|primaryReviewers|[subjectSet](../resources/subjectset.md) collection|This collection specifies the users who will be reviewers.|
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
  "isEnabled": "Boolean",
  "schedule": {
    "@odata.type": "microsoft.graph.entitlementManagementSchedule"
  },
  "isSelfReview": "Boolean",
  "primaryReviewers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "expirationBehavior": "String",
  "isRecommendationEnabled": "Boolean",
  "isReviewerJustificationRequired": "Boolean"
}
```


