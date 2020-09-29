---
title: "accessReviewInstanceDecisionItemTarget resource type"
description: "In the Azure AD access reviews feature, the `accessReviewInstanceDecisionItemTarget` represents the target of a review as either a user target or a service principal target. "
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewInstanceDecisionItemTarget** represents a base class for different types of review targets, each one with its own specific properties. The supported target types are: [accessReviewInstanceDecisionItemUserTarget](accessreviewinstancedecisionitemusertarget.md) and [accessReviewInstanceDecisionItemServicePrincipalTarget](accessreviewinstancedecisionitemserviceprincipaltarget.md).

## Properties
| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemTarget"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstanceDecisionItemTarget resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
