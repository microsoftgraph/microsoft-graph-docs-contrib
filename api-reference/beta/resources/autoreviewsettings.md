---
title: "autoReviewSettings resource type (deprecated)"
description: "Specifies the behavior for when an access review completes."
ms.localizationpriority: medium
author: "shubhamguptacal"
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# autoReviewSettings resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

The **autoReviewSettings** resource type is used in the [accessReviewSettings](accessreviewsettings.md) resource and specifies the behavior for when an access review completes.    

## Properties

| Property | Type | Description |
| :------- | :--- | :---------- |
| notReviewedResult | String | Possible values: `Approve`, `Deny`, or `Recommendation`.  If `Recommendation`, then **accessRecommendationsEnabled** in the **accessReviewSettings** resource should also be set to `true`. If you want to have the system provide a decision even if the reviewer does not make a choice, set the **autoReviewEnabled** property in the **accessReviewSettings** resource to `true` and include an **autoReviewSettings** object with the **notReviewedResult** property. Then, when a review completes, based on the **notReviewedResult** property, the decision is recorded as either `Approve` or `Deny`.|

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.autoReviewSettings"
}-->
```json
{
  "notReviewedResult": "string"
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "autoReviewSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
