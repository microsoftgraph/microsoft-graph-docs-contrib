---
title: "accessReviewStageSettings resource type"
description: "In the Azure AD access reviews feature, the `accessReviewStageSettings` represents the stage settings associated with an multi-stage access review series."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewStageSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **accessReviewStageSettings** collection defines the multi-stage settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|stageId|String|Unique identifier of the accessReviewStageSettings. The stageId will be used in dependsOn property to indicate the stage relationship.|
|dependsOn|String collection|Define the sequential or parallel order of each stageSettings. Only sequential stages are currently supported.|
|durationInDays|Int32|The duration of the stage. The total duration in days cannot exceed the instanceDurationInDays in settings.|
|decisionsThatWillMoveToNextStage|String collection|Indicate which decisions will go to the next stage. Can be a sub-set of "Approve", "Deny", "Recommendation", or "NotReviewed". If not provided, all decisions will go to the next stage.|
|recommendationsEnabled|Boolean|Indicates whether showing recommendations to reviewers is enabled.|
| recommendationLookBackDuration | Duration| Optional field. Indicates the time period of inactivity (with respect to the start date of the review instance) that recommendations will be configured from. The recommendation will be to `deny` if the user is inactive during the look back duration. For reviews of groups and Azure AD roles, any duration is accepted. For reviews of applications, 30 days is the maximum duration. If not specified, the duration is 30 days. |
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|Defines who the reviewers are. If none are specified, the review is a self-review (users review their own access).  For examples of options for assigning reviewers, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept). |
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|If provided, the fallback reviewers are asked to complete a review if the primary reviewers do not exist. For example, if managers are selected as `reviewers` and a principal under review does not have a manager in Azure AD, the fallback reviewers are asked to review that principal.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewStageSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewStageSettings",
  "stageId": "String",
  "dependsOn": [
    "String"
  ],
  "durationInDays": "Integer",
  "recommendationsEnabled": "Boolean",
  "recommendationLookBackDuration": "String (duration)",
  "decisionsThatWillMoveToNextStage": [
    "String"
  ],
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ]
}
```

