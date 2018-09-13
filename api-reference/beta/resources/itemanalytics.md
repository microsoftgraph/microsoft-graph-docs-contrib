---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: ItemAnalytics
---
# ItemAnalytics resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ItemAnalytics** resource provides analytics about activities that took place on an item.
Currently only available on SharePoint and OneDrive for Business.

**Note:** ItemAnalytics is in a limited Preview and not yet available to all tenants.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.itemAnalytics",
  "@type.aka": "oneDrive.analytics"
}-->

```json
{
  "allTime": {"@odata.type": "microsoft.graph.itemActivityStat"},
  "lastSevenDays": {"@odata.type": "microsoft.graph.itemActivityStat"}
}
```

## Properties

| Property      | Type                 | Description
|:--------------|:---------------------|:--------------------------------------
| allTime       | [itemActivityStat][] | Analytics over the the item's entire life.
| lastSevenDays | [itemActivityStat][] | Analytics for the last seven days.

[itemActivityStat]: itemActivityStat.md

## Remarks

You can also use the [getActivitiesByInterval][] API to retrieve analytics over a custom time range or interval.

**ItemAnalytics** is currently only available on SharePoint and OneDrive for Business.

[getActivitiesByInterval]: ../api/itemActivity_getByInterval.md

<!-- {
  "type": "#page.annotation",
  "description": "The ItemAnalytics object provides analytics about activities that took place on an item.",
  "keywords": "activities,activity,action,analytics",
  "section": "documentation",
  "tocPath": "Resources/ItemAnalytics"
} -->
