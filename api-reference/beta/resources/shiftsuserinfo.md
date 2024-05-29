---
title: shiftsUserInfo resource type
description: Represents the details of a user in a schedule.
author: shanemalone
ms.localizationpriority: high
ms.subservice: teams
doc_type: resourcePageType
---

# shiftsUserInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a user in a [schedule](schedule.md).

## Properties

| Property             | Type                          | Description            |
| -------------------- | ----------------------------- | ---------------------- |
| displayName          | `string`                      | The display name for the `user`. Required.      |
| userId    | `string`                      | ID of the `user`.  

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shiftsUserInfo"
}-->

```json
{
  "displayName": "String",
  "userId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "shiftsUserInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
