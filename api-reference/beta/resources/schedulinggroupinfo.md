---
title: schedulingGroupInfo resource type
description: Represents the details of a scheduling group.
author: shanemalone
ms.localizationpriority: high
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# schedulingGroupInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a [schedulingGroup](schedulingGroup.md).

## Properties

| Property             | Type                          | Description            |
| -------------------- | ----------------------------- | ---------------------- |
| displayName          | `string`                      | The display name for the `schedulingGroup`. Required.      |
| schedulingGroupId    | `string`                      | ID of the `schedulingGroup`.  |
| code                 | `string`                      | The code for the `schedulingGroup`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.schedulingGroupInfo"
}-->

```json
{
  "displayName": "String",
  "schedulingGroupId": "String",
  "code": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "schedulingGroupInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
