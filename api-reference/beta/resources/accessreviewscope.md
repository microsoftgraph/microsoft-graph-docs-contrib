---
title: "accessReviewScope resource type"
description: "In the Microsoft Entra access reviews feature, the `accessReviewScope` represents what entities will be reviewed in an access review.  "
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Use **accessReviewScope** to configure what is reviewed in the following properties:
- [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md): **scope**, **instanceEnumerationScope**
- [accessReviewInstance](../resources/accessreviewinstance.md): **scope**
- [accessReviewHistoryDefinition](../resources/accessreviewhistorydefinition.md): **scopes**

This abstract type is inherited by [accessReviewQueryScope](../resources/accessreviewqueryscope.md), [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md), and [accessReviewReviewerScope](../resources/accessreviewreviewerscope.md).

Specifying the OData type in **scope** is highly recommended for all types but required for [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) and [accessReviewInactiveUsersQueryScope](../resources/accessreviewinactiveusersqueryscope.md).

## Properties
None.


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScope"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
