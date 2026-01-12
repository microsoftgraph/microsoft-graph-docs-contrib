---
title: "signInEventsActivity resource type"
description: "Represents the summary of sign-in events for a specific day."
ms.date: 08/18/2025
author: "cumansfi"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# signInEventsActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the summary of sign-in events for a specific day.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/auditlogroot-list-signineventssummary.md)|[signInEventsActivity](../resources/signineventsactivity.md) collection|Get a list of the signInEventsActivity objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityDateTime|DateTimeOffset|The aggregated day for which the summary applies to. This property always represents the entire day. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`gt`, `lt`).|
|id|String|Identifier for the report.|
|signInCount|Int32|The number of sign-in events that occurred for this day. Supports `$filter` (`gt`, `lt`, `eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.signInEventsActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.signInEventsActivity",
  "id": "String (identifier)",
  "signInCount": "Integer",
  "activityDateTime": "String (timestamp)"
}
```

