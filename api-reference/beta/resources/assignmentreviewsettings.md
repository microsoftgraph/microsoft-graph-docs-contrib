---
title: "assignmentReviewSettings resource type"
description: "The assignmentReviewSettings type, used for the accessReviewSettings property of an access package assignment policy, provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# assignmentReviewSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for the **accessReviewSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Provides additional settings to select who must review access package assignments from this policy, and how often they must be reviewed.  

## Properties

This type has the following properties:

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| accessReviewTimeoutBehavior | [accessReviewTimeoutBehavior](#accessreviewtimeoutbehavior-values) | The default decision to apply if the request is not reviewed within the period specified in **durationInDays**. The possible values are: `acceptAccessRecommendation`, `keepAccess`, `removeAccess`, and `unknownFutureValue`. |
| durationInDays | Int32 | The number of days within which reviewers should provide input.|
| isAccessRecommendationEnabled | Boolean | Specifies whether to display recommendations to the reviewer. The default value is `true` |
| isApprovalJustificationRequired | Boolean | Specifies whether the reviewer must provide justification for the approval. The default value is `true`. |
| isEnabled| Boolean | If true, access reviews are required for assignments from this policy. |
| recurrenceType | String | The interval for recurrence, such as `monthly` or `quarterly`. |
| reviewerType | String | Who should be asked to do the review, either `Self`, `Reviewers` or `Manager`. |
| reviewers | [userSet](userset.md) collection | If the reviewerType is `Reviewers`, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of [singleUser](singleuser.md) and [groupMembers](groupmembers.md). |
| startDateTime | DateTimeOffset | When the first review should start. |

### accessReviewTimeoutBehavior values

| Member | Description |
|:---------------|:--------|:----------|
| acceptAccessRecommendation | The review decision to take recommendations from access review to accept/remove access to access package. The general rule for AR recommendations is if last user sign in more than 30 days, it is recommended to remove access to that user. |
| keepAccess | The review decision is to keep current access. |
| removeAccess | The review decision is to remove access to access package. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentReviewSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentReviewSettings",
  "isEnabled": "Boolean",
  "recurrenceType": "String",
  "reviewerType": "String",
  "startDateTime": "String (timestamp)",
  "durationInDays": "Integer",
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.singleUser"
    }
  ],
  "isAccessRecommendationEnabled": "Boolean",
  "isApprovalJustificationRequired": "Boolean",
  "accessReviewTimeoutBehavior": "String"
}
```


