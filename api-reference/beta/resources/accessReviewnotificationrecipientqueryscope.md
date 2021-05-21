---
title: "accessReviewnotificationrecipientqueryscope resource type"
description: "Represents who will receive notification for access reviews."
author: "jingyang"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewnotificationrecipientqueryscope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

- **accessReviewNotificationRecipientQueryScope** is a derived type of `accessReviewNotificationRecipientScope` that is expressed as an OData query. It allows notification recipients to be specified as a static list of users (i.e., specific users, group owners, group members).

Inherits from [accessreviewnotificationrecipientscope](../resources/accessreviewnotificationrecipientscope.md).

## Properties
| Property | Type | Description |
| :-------------------------| :---------- | :---------- |
| query | String | This represents the query for what the recipients are. See table for examples. |
| queryType | String | The type of query. Example,  `MicrosoftGraph`. |
| queryRoot | String | In the scenario where reviewers need to be specified dynamically, this property is used to indicate the relative source of the query. This property is only required if a relative query (i.e., ./manager) is specified. |

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
  "queryType": "String",
  "queryRoot": "String"
}
```
