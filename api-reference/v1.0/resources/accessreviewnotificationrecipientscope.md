---
title: "accessReviewNotificationRecipientScope resource type"
description: "Represents who will receive access review notifications."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# accessReviewNotificationRecipientScope resource type

Namespace: microsoft.graph

In an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md), the **additionalNotificationRecipients** property configures [accessReviewNotificationRecipientItem](../resources/accessreviewnotificationrecipientitem.md) objects, and each item's **notificationRecipientScope** property uses **accessReviewNotificationRecipientScope** to define who receives notification emails. It's inherited by [accessReviewNotificationRecipientQueryScope](../resources/accessreviewnotificationrecipientqueryscope.md).
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

