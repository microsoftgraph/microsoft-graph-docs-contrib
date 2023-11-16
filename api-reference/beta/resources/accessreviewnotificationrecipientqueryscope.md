---
title: "accessReviewNotificationRecipientQueryScope resource type"
description: "Specifies a static list of recipients (for example, specific users, group owners, or group members) to receive access review notifications."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewNotificationRecipientQueryScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Specifies a static list of recipients (for example, specific users, group owners, or group members) to receive access review notifications.

Inherits from [accessReviewNotificationRecipientScope](../resources/accessreviewnotificationrecipientscope.md).

## Properties

| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | Represents the query for who the recipients are. For example, `/groups/{group id}/members` for group members and `/users/{user id}` for a specific user. |
| queryRoot | String | In the scenario where reviewers need to be specified dynamically, indicates the relative source of the query. This property is only required if a relative query (that is, `./manager`) is specified. |
| queryType | String | Indicates the type of query. Allowed value is `MicrosoftGraph`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewNotificationRecipientQueryScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewNotificationRecipientQueryScope",
  "query": "String",
  "queryRoot": "String",
  "queryType": "String"
}
```
