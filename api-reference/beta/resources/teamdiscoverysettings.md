---
title: "teamDiscoverySettings resource type"
description: "Settings to configure team discoverability by others."
---

# teamDiscoverySettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Settings to configure [team](team.md) discoverability by others. A team's discovery settings may only be changed if the team is private.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|showInTeamsSearchAndSuggestions|Boolean|If set to true, the team is visible via search and suggestions from the Teams client.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamDiscoverySettings"
}-->

```json
{
  "showInTeamsSearchAndSuggestions": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's discoverySettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
