---
title: "removeAccessApplyAction resource type"
description: "Remove access from a resource for those denied in an access review of that resource."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# removeAccessApplyAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

In an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), the **applyActions** property of [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) uses **removeAccessApplyAction** as the default action to remove access from a resource for denied reviewers.

Inherits from [accessReviewApplyAction](../resources/accessreviewapplyaction.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.removeAccessApplyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.removeAccessApplyAction"
}
```
