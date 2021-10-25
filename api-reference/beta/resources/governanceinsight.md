---
title: "governanceinsight resource type"
description: "In the Azure AD access reviews feature, the `governanceinsight` represents a type of insight included in the review."
author: "shubhamguptacal"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# governanceinsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **governanceinsight** model represents insights presented to the reviewer for an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md). Note that this object is abstract with multiple derived types

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| insightCreatedDateTime | DateTimeOffset | Indicates when the insight was created |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.governanceinsight"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.governanceinsight",
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
