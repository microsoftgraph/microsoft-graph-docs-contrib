---
title: "planner resource type"
description: "The **planner** resource is the entry point for the Planner object model. It returns a singleton **planner** resource.  It doesn't contain any usable properties."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# planner resource type

Namespace: microsoft.graph

The **planner** resource is the entry point for the Planner object model. It returns a singleton **planner** resource.  It doesn't contain any usable properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create bucket](../api/planner-post-buckets.md) |[plannerBucket](plannerbucket.md)| Create a new **plannerBucket** by posting to the buckets collection.|
|[Create plan](../api/planner-post-plans.md) |[plannerPlan](plannerplan.md)| Create a new **plannerPlan** by posting to the plans collection.|
|[Create task](../api/planner-post-tasks.md) |[plannerTask](plannertask.md)| Create a new **plannerTask** by posting to the tasks collection.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable. Returns a collection of the specified buckets|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable. Returns a collection of the specified plans|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Returns a collection of the specified tasks|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.planner"
}-->

```json
{
}
```

## Example

The **planner** resource is available at the root of the graph.

<!--{
  "blockType": "request"
}-->
```http
GET https://graph.microsoft.com/v1.0/planner
```

<!--{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.planner"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "planner resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

