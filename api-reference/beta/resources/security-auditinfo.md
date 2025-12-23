---
title: "auditInfo resource type"
description: "Represents audit information including user and timestamp for creation or modification actions."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# auditInfo resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents audit metadata, including the user and timestamps for creation or modification actions. This complex type tracks who performed an action and when it occurred.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|by|String|User who performed the action.|
|dateTime|DateTimeOffset|Timestamp of the action. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.auditInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.auditInfo",
  "by": "String",
  "dateTime": "String (timestamp)"
}
```

