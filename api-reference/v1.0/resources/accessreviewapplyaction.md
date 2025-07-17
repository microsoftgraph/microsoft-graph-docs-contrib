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

Represents a base class for apply actions in the [accessReviewScheduleSettings](accessreviewschedulesettings.md) of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object. The following derived types are supported:

- [removeAccessApplyAction](removeaccessapplyaction.md) indicates removing access of an entity being reviewed upon completion of the review. This is the default type for the applyActions property in accessReviewScheduleSettings and doesn't need to be specified.

- [disableAndDeleteUserApplyAction](disableanddeleteuserapplyaction.md) indicates disabling and deleting the user being reviewed upon completion of the review. This is the nondefault type and must be explicitly specified in accessReviewScheduleSettings.

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

