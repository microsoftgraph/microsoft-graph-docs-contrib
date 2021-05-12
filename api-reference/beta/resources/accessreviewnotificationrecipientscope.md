---
title: "accessreviewnotificationrecipientscope resource type"
description: "Represents who will get notification."
author: "jingyangatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessreviewnotificationrecipientscope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The accessreviewnotificationrecipientscope represents a base class of notification recipient for review instances of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). Supported derived 
types:
- **accessReviewNotificationRecipientQueryScope** is a derived type of accessreviewnotificationrecipientscope that expressed as an OData query, which allows notification recipient to be specified both as a static list of users (i.e., specific users, group owners, group members) or dynamically (i.e., the case where every user is reviewed by their manager). 
defines who will get special notification

## accessReviewNotificationRecipientQueryScope resource type
### Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | This represents the query for what the recipients are. See table for examples. |
| queryType | String | The type of query. Examples  `MicrosoftGraph`. |
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
<!--
{
  "type": "#page.annotation",
  "description": "accessreviewnotificationrecipientscope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
