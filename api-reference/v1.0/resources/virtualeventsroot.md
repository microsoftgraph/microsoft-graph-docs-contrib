---
title: "virtualEventsRoot resource type"
description: "The container for virtual event APIs."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "non-product-specific"
doc_type: resourcePageType
ms.date: 09/11/2024
---

# virtualEventsRoot resource type

Namespace: microsoft.graph

The container for [virtual event](virtualevent.md) APIs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [List webinars](../api/virtualeventsroot-list-webinars.md) | [virtualEventWebinar](../resources/virtualeventwebinar.md) collection | Get the list of all [virtualEventWebinar](../resources/virtualeventwebinar.md) objects created in a tenant. |

## Properties

None.

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|townhalls|[virtualEventTownhall](virtualeventtownhall.md) collection | A collection of town halls. Nullable.|
|webinars|[virtualEventWebinar](virtualeventwebinar.md) collection | A collection of webinars. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualEventsRoot"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.virtualEventsRoot"
}
```
