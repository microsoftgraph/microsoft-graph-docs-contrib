---
title: "channelSummary resource type"
description: "Contains information about a channel in Microsoft Teams, including numbers of guests, members, and owners, and whether the channel includes members from other tenants."
ms.localizationpriority: medium
author: "rupanshoo"
ms.subservice: "teams"
doc_type: resourcePageType
---

# channelSummary resource type

Namespace: microsoft.graph

Contains information about a channel in Microsoft Teams, including numbers of owners, members, guests, and whether the channel includes members from other tenants.

## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|ownersCount|Int32|Count of owners in a channel.|
|membersCount|Int32|Count of members in a channel.|
|guestsCount|Int32|Count of guests in a channel.|
|hasMembersFromOtherTenants|Boolean|Indicates whether external members are included on the channel.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelSummary"
}-->

```json
{
    "ownersCount": "Integer",
    "membersCount": "Integer",
    "guestsCount": "Integer",
    "hasMembersFromOtherTenants": "Boolean"
}
```
