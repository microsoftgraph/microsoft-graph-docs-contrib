---
title: "disableAndDeleteUserApplyAction resource type"
description: "Disable and delete is a complex type of accessReviewApplyAction that indicates disabling any B2B guest user who is denied in an access review for 30 days, then subsequently deleting their account."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# disableAndDeleteUserApplyAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Disable and delete is a complex type of [accessReviewApplyAction](accessreviewapplyaction.md) that indicates disabling any B2B guest user who is denied in an access review for 30 days, then subsequently deleting their account. This option does not contain any configuration options.

Inherits from [accessReviewApplyAction](../resources/accessreviewapplyaction.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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