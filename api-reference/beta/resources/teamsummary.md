---
title: "teamSummary resource type"
description: "Contains information about a team in Microsoft Teams, including numbers of owners, members, and guests."
ms.localizationpriority: medium
author: "akhilkohlimicrosoft"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a team in Microsoft Teams, including number of owners, members, and guests.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|guestsCount|Int32|Count of guests in a team.|
|membersCount|Int32|Count of members in a team.|
|ownersCount|Int32|Count of owners in a team.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamSummary"
}-->

```json
{
    "guestsCount": "Int32",
    "membersCount": "Int32",
    "ownersCount": "Int32"
}
```


