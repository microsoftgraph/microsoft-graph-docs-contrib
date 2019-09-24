---
title: "conditionalAccessApplications resource type"
description: "Represents applications and user actions included in and excluded from the policy scope."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "resourcePageType"
---

# conditionalAccessApplications resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents applications and user actions included in and excluded from the policy scope.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| `includeApplications` | String collection | Application IDs (could be 'All') in scope of policy unless explicitly excluded. |
| `excludeApplications` | String collection | Application IDs excluded from scope of policy. |
| `includeUserActions` | String collection | User actions to include (e.g. 'urn:user:registersecurityinfo') |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeApplications",
    "excludeApplications",
    "includeUserActions"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessApplications"
}-->

```json
{
  "includeApplications": ["String"],
  "excludeApplications": ["String"],
  "includeUserActions": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessApplications resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->