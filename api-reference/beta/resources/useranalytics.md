---
title: "userAnalytics resource type"
description: "The user's activity statistics and related settings."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "resourcePageType"
---

# userAnalytics resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The user's activity statistics and related settings.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|settings|[settings](settings.md)|Get activity statistics and related settings for a user.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|activityStatistics|[activityStatistics](activitystatistics.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userAnalytics",
  "baseType": ""
}-->

```json
{
  "settings": {"@odata.type": "microsoft.graph.userAnalytics"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userAnalytics resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->