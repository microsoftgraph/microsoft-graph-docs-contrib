---
title: "accessReviewRecommendationInsightSetting resource type"
description: "In the Azure AD access reviews, the accessReviewRecommendationInsightSetting represents the settings associated with an insight provided for an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewRecommendationInsightSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **accessReviewRecommendationInsightSetting** allows you to configure insights for an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). This complex type is the abstract type for the following derived types:
+ [userLastSignInRecommendationInsightSetting](userlastsignInrecommendationinsightsetting.md)
+ [groupPeerOutlierRecommendationInsightSettings](grouppeeroutlierrecommendationinsightsettings.md)


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewRecommendationInsightSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewRecommendationInsightSetting",
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessreviewrecommendationinsightsetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
