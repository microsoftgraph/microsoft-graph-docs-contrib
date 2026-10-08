---
title: "accessReviewApplyAction resource type"
description: "Represents the action to take on reviewed users after an access review instance is completed."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# accessReviewApplyAction resource type

Namespace: microsoft.graph

In an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), the **applyActions** property of [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) configures the actions to take on reviewed users after an access review instance is completed. The following derived types are supported:

- [removeAccessApplyAction](../resources/removeaccessapplyaction.md) indicates removing access of an entity being reviewed upon completion of the review. This is the default type for the **applyActions** property of [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) and doesn't need to be specified.

- [disableAndDeleteUserApplyAction](../resources/disableanddeleteuserapplyaction.md) indicates disabling and deleting the user being reviewed upon completion of the review. This type must be explicitly specified in the **applyActions** property of [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewApplyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewApplyAction"
}
```

