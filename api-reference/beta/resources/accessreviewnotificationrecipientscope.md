---
title: "accessreviewnotificationrecipientscope resource type"
description: "Represents who will receive notification for access reviews."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessreviewnotificationrecipientscope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The `accessReviewNotificationRecipientScope` represents a base class for defining who will receive notifications on instances of [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) objects. Supported derived 
types:
- **accessReviewNotificationRecipientQueryScope** is a derived type of `accessReviewNotificationRecipientScope` that is expressed as an OData query. It allows notification recipients to be specified as a static list of users (i.e., specific users, group owners, group members).

## accessReviewNotificationRecipientQueryScope resource type
### Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | This represents the query for what the recipients are. See table for examples. |
| queryType | String | The type of query. Example,  `MicrosoftGraph`. |
| queryRoot | String | In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query (i.e., ./manager) is specified. |

### Supported queries for accessReviewNotificationRecipientQueryScope

|Scenario| query | queryType | queryRoot |
|--|--|--|--|
| Group member as notification recipient | /groups/{group id}/members |MicrosoftGraph||
| Specific user as notification recipient | /users/{user id} |MicrosoftGraph||


### JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessreviewnotificationrecipientscope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewNotificationRecipientQueryScope",
  "query": "String",
  "queryType": "String",
  "queryRoot": "String"
}
```

## Relationships
None.
