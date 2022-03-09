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

Team summary consists of ownersCount, membersCount, guestsCount in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|guestsCount|Integer|Count of guests in a team.|
|membersCount|Integer|Count of members in a team.|
|ownersCount|Integer|Count of owners in a team.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamSummary"
}-->

```json
{
    "guestsCount": "Integer",
    "membersCount": "Integer",
    "ownersCount": "Integer",
}
```


