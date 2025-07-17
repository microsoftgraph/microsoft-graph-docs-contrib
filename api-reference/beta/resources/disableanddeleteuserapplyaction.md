---
title: "disableAndDeleteUserApplyAction resource type"
description: "Disable and delete any B2B guest user who is denied in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# disableAndDeleteUserApplyAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Disable any B2B guest user who is denied in an access review for 30 days, and then delete their account. This option doesn't contain any configuration options.

Inherits from [accessReviewApplyAction](../resources/accessreviewapplyaction.md).

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
