---
title: "disableAndDeleteUserApplyAction resource type"
description: "Disable and delete any B2B guest user who is denied in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# disableAndDeleteUserApplyAction resource type

Namespace: microsoft.graph

In an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), the **applyActions** property of [accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md) can use **disableAndDeleteUserApplyAction** to disable a denied B2B guest user for 30 days and then delete their account. This option doesn't contain any configuration options.

Inherits from [accessReviewApplyAction](../resources/accessreviewapplyaction.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following, is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.disableAndDeleteUserApplyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.disableAndDeleteUserApplyAction"
}
```
