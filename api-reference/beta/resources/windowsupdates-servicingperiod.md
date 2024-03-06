---
title: "servicingPeriod resource type"
description: "Represents information about a servicing period related to a product edition."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# servicingPeriod resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a servicing period related to a product edition. Each edition of a particular product has one or more servicing periods.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|endDateTime|DateTimeOffset|The date and time when the servicing period ends. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|The unique identifier for the servicing period. Read-only.|
|name|String|The name of the servicing period. For example, `Modern Lifecycle`.|
|startDateTime|DateTimeOffset|The start date and time of the servicing period. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.servicingPeriod",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.servicingPeriod",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "name": "String",
  "startDateTime": "String (timestamp)"
}
```
