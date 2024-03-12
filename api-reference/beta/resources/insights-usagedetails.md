---
title: "usageDetails resource type"
description: "Complex type containing properties of used items. Information on when the resource was last accessed (viewed) or modified (edited) by the user."
author: "simonhult"
ms.localizationpriority: medium
ms.subservice: "insights"
doc_type: resourcePageType
---

# usageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complex type containing properties of [used](insights-used.md) items. Information on when the resource was last accessed (viewed) or modified (edited) by the user.

## Properties

| Property              | Type          | Description  |
| -------------         |---------------| -------------|
| lastAccessedDateTime                  | DateTimeOffset        | The date and time the resource was last accessed by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
| lastModifiedDateTime                | DateTimeOffset        | The date and time the resource was last modified by the user. The timestamp represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.       |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.usageDetails"
}-->

```json
{
  "lastAccessedDateTime": "DateTimeOffset",
  "lastModifiedDateTime": "DateTimeOffset"
}
```

