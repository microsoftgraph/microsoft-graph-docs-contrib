---
title: "userlastsignInrecommendationinsightsetting resource type"
description: "In the Azure AD access reviews feature, the `userlastsignInrecommendationinsightsetting` represents the settings associated with the last sign in insight included in the review."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userlastsignInrecommendationinsightsetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **userlastsignInrecommendationinsightsetting** allows you to configure last sign in as an insights for an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md).

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| signInScope| userSignInRecommendationScope | Indicates whether signInScope is tenant or application |
| recommendationLookBackDuration | Duration| Optional field. Indicates the time period of inactivity (with respect to the start date of the review instance) that recommendations will be configured from. The recommendation will be to `deny` if the user is inactive during the look back duration. For reviews of groups and Azure AD roles, any duration is accepted. For reviews of applications, 30 days is the maximum duration. If not specified, the duration is 30 days. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userlastsignInrecommendationinsightsetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userlastsignInrecommendationinsightsetting",
  "recommendationLookBackDuration": "Duration",
  "signInScope": "microsoft.graph.userSignInRecommendationScope"
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
