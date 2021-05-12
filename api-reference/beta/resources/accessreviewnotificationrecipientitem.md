---
title: "accessReviewNotificationRecipientItem resource type"
description: "Define notification event for accessReviewInstance."
author: "ingyangatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewNotificationRecipientItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]


Represents an Azure AD [access review](accessreviewsv2-root.md) notification event on an instance of a review. This item contains email templateType and recipient properties to enable sending certain type of notification for a given [access review instance](accessreviewinstance.md).

## Properties

| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| `notificationTemplateType`          |`String`  | This is used to indicate what type of access review email should be sent. Currently supported templateType:CompletedAdditionalRecipients - Send email when review completes noticeing review ends and result available.|
| `notificationRecipientScope`          |[accessReviewNotificationRecipientScope] (accessreviewnotificationrecipientscope.md)  | This contain notificationRecipient information|

## Relationships
None.


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "openType": true
}
-->

```json
{
  "notificationRecipientScope": {
      "@odata.type":"#microsoft.graph.accessReviewNotificationRecipientQueryScope",                
      "query": "/users/46d30af1-e626-4928-83f5-e9bfa400289e",
      "queryType": "MicrosoftGraph”
    },
  "notificationTemplateType": "CompletedAdditionalRecipients"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstanceDecisionItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
