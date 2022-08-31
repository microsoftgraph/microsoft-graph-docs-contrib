---
title: "governanceInsight resource type"
description: "Represents insights presented to the reviewer for an accessReviewInstanceDecisionItem."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# governanceInsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents insights presented to the reviewer for an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md). Insights are recommendations to reviewers to help them complete access reviews.

This complex type is the abstract type for the following derived types:
+ [userSignInInsight](usersignininsight.md) derived type.
+ [membershipOutlierInsight](membershipoutlierinsight.md) derived type.

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| id | String | Identifier of the insight. Read-only. |
| insightCreatedDateTime | DateTimeOffset | Indicates when the insight was created. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governanceInsight",
  "keyProperty": "id"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governanceinsight",
  "id": "String",
  "insightCreatedDateTime": "DateTimeOffset"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "governanceinsight resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
