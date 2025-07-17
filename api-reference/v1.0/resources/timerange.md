---
title: "timeRange resource type"
description: "A time range resource with a start and end time."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
ms.date: 07/26/2024
---

# timeRange resource type

Namespace: microsoft.graph

A time range resource with a start and end time.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|endTime|TimeOfDay|End time for the time range.|
|startTime|TimeOfDay|Start time for the time range.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeRange",
  "baseType": null
}-->

```json
{
  "endTime": "String (timestamp)",
  "startTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
