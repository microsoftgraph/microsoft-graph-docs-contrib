---
title: "groupPeerOutlierRecommendationInsightSettings resource type"
description: "In the Microsoft Entra access reviews, the groupPeerOutlierRecommendationInsightSettings represents the settings associated with user-to-group affiliation insights, and that is used to aid reviewers to make decisions."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# groupPeerOutlierRecommendationInsightSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Use **groupPeerOutlierRecommendationInsightSettings** to configure user-to-group affiliation insights in the following properties:
- [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md): **recommendationInsightSettings**
- [accessReviewStageSettings](../resources/accessreviewstagesettings.md): **recommendationInsightsSettings**

Microsoft Entra ID assesses the affiliation of the user with other members within the group and provides _approve_ or _deny_ recommendation insights to the approvers.

Inherits from [accessReviewRecommendationInsightSetting](../resources/accessreviewrecommendationinsightsetting.md).

## Properties
None.


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupPeerOutlierRecommendationInsightSettings",
  "baseType": "microsoft.graph.accessReviewRecommendationInsightSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPeerOutlierRecommendationInsightSettings"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "groupPeerOutlierRecommendationInsightSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
