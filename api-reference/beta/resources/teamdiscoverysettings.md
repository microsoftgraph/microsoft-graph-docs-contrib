---
title: "teamDiscoverySettings resource type"
description: "Settings to configure team discoverability by others."
ms.localizationpriority: medium
author: "MSFTRickyCastaneda"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# teamDiscoverySettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides settings to enable others to configure [team](team.md) discoverability. You can only modify discovery settings for private teams.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|showInTeamsSearchAndSuggestions|Boolean|If set to true, the team is visible via search and suggestions from the Teams client.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamDiscoverySettings"
}-->

```json
{
  "showInTeamsSearchAndSuggestions": true
}
```

<!-- uuid: f1d42106-0b3d-4930-9f19-d76f4e03b36b
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's discoverySettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->


