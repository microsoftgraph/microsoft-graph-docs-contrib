---
title: "keyValue resource type"
description: "Standard key-value pair resource type."
ms.localizationpriority: medium
author: "dougeby"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# keyValue resource type

Namespace: microsoft.graph

Represents a key-value pair.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|string| Key for the key-value pair. |
|value|string| Value for the key-value pair.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keyValue"
}-->

```json
{
  "key": "string",
  "value": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "keyValue resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

