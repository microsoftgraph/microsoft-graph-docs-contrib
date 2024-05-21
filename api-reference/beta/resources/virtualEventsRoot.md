---
title: "virtualEventsRoot resource type"
description: "The container for virtual event APIs."
author: "frankpeng7"
ms.localizationpriority: medium
ms.subservice: "non-product-specific"
doc_type: resourcePageType
---

# virtualEventsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for [virtual event](virtualevent.md) APIs.

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|webinars|[virtualEventWebinar](virtualeventwebinar.md) collection | A collection of webinars. Nullable.|
|townhalls|[virtualEventTownhall](virtualeventtownhall.md) collection | A collection of town halls. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.solutionsRoot"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.virtualEventsRoot"
}
