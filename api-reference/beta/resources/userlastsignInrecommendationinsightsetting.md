---
title: "userLastSignInRecommendationInsightSetting resource type"
description: "In the Microsoft Entra access reviews, the userLastSignInRecommendationInsightSetting represents the settings associated with the insight that is based on the last sign-in date and time of the user, and that is used to aid reviewers to make decisions."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# userlastsignInrecommendationinsightsetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **userLastSignInRecommendationInsightSetting** allows you to configure the last sign-in date and time of a user as an insight to aid the reviewers to make decisions for an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object.

Inherits from [accessReviewRecommendationInsightSetting](accessReviewRecommendationInsightSetting.md).

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| recommendationLookBackDuration | Duration | Optional. Indicates the time period of inactivity (with respect to the start date of the review instance) that recommendations will be configured from. The recommendation will be to `deny` if the user is inactive during the look-back duration. For reviews of groups and Microsoft Entra roles, any duration is accepted. For reviews of applications, 30 days is the maximum duration. If not specified, the duration is 30 days. |
| signInScope | userSignInRecommendationScope | Indicates whether inactivity is calculated based on the user's inactivity in the tenant or in the application. The possible values are `tenant`, `application`, `unknownFutureValue`. `application` is only relevant when the access review is a review of an assignment to an application. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userLastSignInRecommendationInsightSetting",
  "baseType": "microsoft.graph.accessReviewRecommendationInsightSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userlastsignInrecommendationinsightsetting",
  "recommendationLookBackDuration": "String (duration)",
  "signInScope": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "userlastsignInrecommendationinsightsetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
