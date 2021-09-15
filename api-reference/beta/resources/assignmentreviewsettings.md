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
| accessReviewTimeoutBehavior | accessReviewTimeoutBehavior | The default decision to apply if the request is not reviewed within the period specified in **durationInDays**. |
| durationInDays | Int32 | The number of days within which reviewers should provide input.|
| isAccessRecommendationEnabled | Boolean | Specifies whether to display recommendations to the reviewer. The default value is `true` |
| isApprovalJustificationRequired | Boolean | Specifies whether the reviewer must provide justification for the approval. The default value is `true`. |
| isEnabled| Boolean | If true, access reviews are required for assignments from this policy. |
| recurrenceType | String | The interval for recurrence, such as `monthly` or `quarterly`. |
| reviewerType | String | Who should be asked to do the review, either `Self` or `Reviewers`. |
| reviewers | [userSet](userset.md) collection | If the reviewerType is `Reviewers`, this collection specifies the users who will be reviewers, either by ID or as members of a group, using a collection of [singleUser](singleuser.md) and [groupMembers](groupmembers.md). |
| startDateTime | DateTimeOffset | When the first review should start. |

### Enum Type

| Member | Description |
|:---------------|:--------|:----------|
| acceptAccessRecommendation | Review decision to take recommendations from access review to accept/remove access to access package. The general rule for AR recommendations is if last user sign in more than 30 days, it is recommended to remove access to that user. |
| keepAccess | Review decision is to keep current access. |
| removeAccess | Review decision is to remove access to access package. |
| unknownFutureValue | Sentinel member for evolvable enum |

## JSON representation


The following is a JSON representation of the access review settings property of a policy.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignmentReviewSettings"
}-->

```json
{
  "isEnabled": true,
  "recurrenceType": "quarterly",
  "reviewerType": "Self",
  "startDateTime": "2020-01-23T07:59:59.998Z",
  "durationInDays": 25,
  "reviewers": []
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "assignmentReviewSettings complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


