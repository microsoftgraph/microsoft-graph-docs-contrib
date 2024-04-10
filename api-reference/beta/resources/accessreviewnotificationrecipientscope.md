---
title: "accessReviewNotificationRecipientScope resource type"
description: "Represents who will receive access review notifications."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewNotificationRecipientScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The **accessReviewNotificationRecipientScope** represents a base class for defining users who receive notifications on instances of [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) objects. It's inherited by [accessReviewNotificationRecipientQueryScope](../resources/accessReviewNotificationRecipientQueryScope.md).
## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewNotificationRecipientScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewNotificationRecipientScope"
}
```