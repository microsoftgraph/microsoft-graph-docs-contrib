---
title: "userWorkLocation resource type"
description: "**TODO: Add Description**"
author: "garchiro7"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# userWorkLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `userWorkLocation` resource represents the aggregated work location state for a user, computed from multiple signals: scheduled, automatic, and manual. It provides a consistent, privacy-aware way to expose where a user is working (e.g., office, remote, time off) and the metadata that supports hybrid work scenarios.

Precedence: manual > automatic > scheduled
Precision: more granular wins (e.g., office & building > office).

### Aggregation Rules

- If manual location is set → wins immediately.
- Else if automatic location exists → most precise automatic signal wins.
- Else if scheduled location exists → used as fallback.
- If none → source = none, workLocationType = unspecified.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|placeId|String| Identifier of the place (when applicable). |
|source|workLocationSource| Indicates which layer won the aggregation. The possible values are: `none`, `manual`, `scheduled`, `automatic`, `unknownFutureValue`.|
|workLocationType|workLocationType| Semantic type of the location. The possible values are: `unspecified`, `office`, `remote`, `timeOff`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userWorkLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userWorkLocation",
  "workLocationType": "String",
  "source": "String",
  "placeId": "String"
}
```

