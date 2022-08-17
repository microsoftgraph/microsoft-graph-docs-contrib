---
title: "userPurpose resource type"
description: "Represents the user's recipient or mailbox type in Exchange Online."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "mail"
author: "abheek-das"
---

# userPurpose resource type

Namespace: microsoft.graph

Represents the user's recipient or mailbox type in Exchange Online. Differentiates a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online.

## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|value|[userPurpose](#userpurpose-values)|Represents the user's recipient or mailbox type in Exchange Online. Possible values are: `user`, `linked`, `shared`, `room`, `equipment`, and `others`. For more information, see [userPurpose values](#userpurpose-values).|

### userPurpose values
| Member    | Description                                                                                              |
|:----------|:---------------------------------------------------------------------------------------------------------|
| user      | A user account with a mailbox in the local forest.                                                       |
| linked    | A mailbox linked to a user account in another forest.                                                    |
| shared    | A mailbox shared by two or more user accounts.                                                           |
| room      | A mailbox that represents a conference room.                                                             |
| equipment | A mailbox that represents a piece of equipment.                                                          |
| others    | A mailbox was found but the user purpose is different from the ones specified in the previous scenarios. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userPurpose"
}-->

```json
{
    "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "userPurpose resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

