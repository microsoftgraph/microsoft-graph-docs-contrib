---
title: "servicingPeriod resource type"
description: "This EntityType holds information of a servicing period related to a product edition."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# servicingPeriod resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This EntityType holds information of a servicing period related to a product edition. Each edition of a particular product will have one or more servicing periods. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ID|String|The unique identifier for the catalog entry. Read-only.|
|name|String|The name of the servicing period. Example: "Modern Lifecycle."|
|startDateTime|DateTimeOffset| Start date time of the servicing period. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|endDateTime|DateTimeOffset|Date time when the servicing period ends. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

Supported Methods: GET

Supported query parameters: filter(eq) name, expand(editions, knownIssues, revisions).

## Relationships
None.

## JSON representation
The following code is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "name": "String",
  "startDateTime": "DateTimeOffset",
  "endDateTime": "DateTimeOffset",
}
```
