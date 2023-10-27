---
title: "channelSummary resource type"
description: "Contains information about a channel in Microsoft Teams, including numbers of guests, members, and owners, and whether the channel includes members from other tenants."
ms.localizationpriority: medium
author: "sonalikallanimicrosoft"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a channel in Microsoft Teams, including numbers of guests, members, and owners, and whether the channel includes members from other tenants.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|guestsCount|Int32|Count of guests in a channel.|
|hasMembersFromOtherTenants|Boolean|Indicates whether external members are included on the channel.|
|membersCount|Int32|Count of members in a channel.|
|ownersCount|Int32|Count of owners in a channel.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelSummary"
}-->

```json
{
    "guestsCount": "Integer",
    "hasMembersFromOtherTenants": "Boolean",
    "membersCount": "Integer",
    "ownersCount": "Integer"
}
```
