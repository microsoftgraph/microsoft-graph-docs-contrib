---
title: "accessReviewNotificationRecipientItem resource type"
description: "Defines users or groups who will receive notifications on access review."
author: "isabelleatmsft"
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
| notificationTemplateType  |String  | Indicates what type of access review email should be sent. Supported template type is `CompletedAdditionalRecipients` which sends a notification to recipient of review completion.|
| notificationRecipientScope |[accessReviewNotificationRecipientScope] (accessreviewnotificationrecipientscope.md)  | Determines who the notification email will be sent to.|

## Relationships
None.


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem",
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
