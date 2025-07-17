---
title: "accessReviewStageSettings resource type"
description: "In Microsoft Entra access reviews, the accessReviewStageSettings represent the settings of the stages associated with a multi-stage access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# accessReviewStageSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents the settings of the stages associated with a [multi-stage access review](accessreviewscheduledefinition.md) object. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|decisionsThatWillMoveToNextStage|String collection|Indicate which decisions will go to the next stage. Can be a subset of `Approve`, `Deny`, `Recommendation`, or `NotReviewed`. If not provided, all decisions will go to the next stage. Optional. |
|dependsOn|String collection| Defines the sequential or parallel order of the stages and depends on the **stageId**. Only sequential stages are currently supported. For example, if **stageId** is `2`, then **dependsOn** must be `1`. If **stageId** is `1`, don't specify **dependsOn**. Required if **stageId** isn't `1`. |
|durationInDays|Int32|The duration of the stage. Required.  <br/><br/>**NOTE:** The cumulative value of this property across all stages <br/> 1. Will override the [instanceDurationInDays setting](accessReviewScheduleSettings.md) on the [accessReviewScheduleDefinition](accessReviewScheduleDefinition.md) object. <br/>2. Can't exceed the length of one recurrence. That is, if the review recurs weekly, the cumulative **durationInDays** can't exceed 7. |
|fallbackReviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|If provided, the fallback reviewers are asked to complete a review if the primary reviewers don't exist. For example, if managers are selected as **reviewers** and a principal under review doesn't have a manager in Microsoft Entra ID, the fallback reviewers are asked to review that principal. <br/><br/>**NOTE:** The value of this property overrides the corresponding setting on the [accessReviewScheduleDefinition](accessReviewScheduleDefinition.md) object.|
|recommendationsEnabled|Boolean|Indicates whether showing recommendations to reviewers is enabled. Required. <br/><br/>**NOTE:** The value of this property overrides the corresponding [setting](accessReviewScheduleSettings.md) on the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object.|
| recommendationInsightsSettings | [accessReviewRecommendationInsightSetting](accessReviewRecommendationInsightSetting.md) collection | Determines which recommendations to show to reviewers. <br/><br/>**NOTE:** The value of this property overrides the corresponding [setting](accessReviewScheduleSettings.md) on the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object.|
| recommendationLookBackDuration | Duration| Optional field. Indicates the time period of inactivity (with respect to the start date of the review instance) from which that recommendations will be configured. The recommendation is to `deny` if the user is inactive during the look back duration. For reviews of groups and Microsoft Entra roles, any duration is accepted. For reviews of applications, 30 days is the maximum duration. If not specified, the duration is 30 days. <br/><br/>**NOTE:** The value of this property overrides the corresponding [setting](accessReviewScheduleSettings.md) on the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object. |
|reviewers|[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection|Defines who the reviewers are. If none is specified, the review is a self-review (users review their own access).  For examples of options for assigning reviewers, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept). <br/><br/>**NOTE:** The value of this property overrides the corresponding setting on the [accessReviewScheduleDefinition](accessReviewScheduleDefinition.md). |
|stageId|String|Unique identifier of the **accessReviewStageSettings**. The **stageId** is used in **dependsOn** property to indicate the stage relationship. Required. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
