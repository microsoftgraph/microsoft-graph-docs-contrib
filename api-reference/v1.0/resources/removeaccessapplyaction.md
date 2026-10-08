---
title: "removeAccessApplyAction resource type"
description: "Removes access to a resource for those denied in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# removeAccessApplyAction resource type

Namespace: microsoft.graph

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
