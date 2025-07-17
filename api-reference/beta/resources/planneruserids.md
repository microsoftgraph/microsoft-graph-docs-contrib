---
title: "plannerUserIds resource type"
description: "The **plannerUserIds** resource represents the list of users IDs that a plan is shared with and is an Open Type. If you're using Microsoft 365 groups, use the Groups API to manage group membership to share the group's plan. You can also add existing members of the group to this collection though it isn't required for them to access the plan owned by the group."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# plannerUserIds resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **plannerUserIds** resource represents the list of users IDs that a [plan](plannerplan.md) is shared with and is an Open Type. If you're using Microsoft 365 groups, use the Groups API to manage group membership to share the [group's](group.md) plan. You can also add existing members of the group to this collection though it isn't required for them to access the plan owned by the group.


## Properties
Properties of an Open Type can be defined by the client. In this case, the client should provide user IDs as properties with their values being the `true` Boolean. When user IDs are no longer shared with, properties are automatically removed by setting their values to the `false` Boolean.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerUserIds",
  "openType": true
}-->

```json
{
  "String-value": true
}
```

### Example
```json
{
  "400723e1-102b-43aa-aba9-f35524827084": true, // property name is user id
  "f117339e-c914-4a9c-9b66-1c062b027556": true,
  "e886d105-23b9-47e2-bde1-757e75ee4a28": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerUserIds resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


