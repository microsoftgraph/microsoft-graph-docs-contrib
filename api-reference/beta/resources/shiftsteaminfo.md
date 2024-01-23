---
title: shiftsTeamInfo resource type
description: A description of the team with a schedule.
author: shanemalone
ms.localizationpriority: high
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# shiftsTeamInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Information about the team with a [schedule](schedule.md).

## Properties

| Property             | Type                          | Description            |
| -------------------- | ----------------------------- | ---------------------- |
| displayName          | `string`                      | The display name for the `team`. Required.      |
| teamId    | `string`                      | ID of the `team`.  

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shiftsTeamInfo"
}-->

```json
{
  "displayName": "String",
  "teamId": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "shiftsTeamInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
