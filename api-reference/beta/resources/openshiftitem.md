---
title: "openShiftItem resource type"
description: "Represents the details of an open shift."
ms.localizationpriority: medium
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# openShiftItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an [open shift](../resources/openshift.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|openSlotCount|Int32| Count of the number of slots for the given open shift.|

## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShiftItem",
  "baseType": "microsoft.graph.shiftItem"
}-->

```json
{
  "openSlotCount": 1024,
  "displayName": "Day Shift",
  "startDateTime": "2023-06-11T01:45:00Z",
  "endDateTime": "2023-06-11T02:15:00Z",
  "theme": "blue",
  "notes": null,
  "openSlotCount": 6,
  "activities": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


