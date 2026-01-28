---
title: "knownIssueHistoryItem resource type"
description: "Represents the description text for the known issue, used to maintain historical records."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# knownIssueHistoryItem resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the description text for the known issue, used to maintain historical records.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the post was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|body| [microsoft.graph.windowsUpdates.itemBody](../resources/windowsupdates-itembody.md)| Container for holding content and type. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.knownIssueHistoryItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.knownIssueHistoryItem",
  "createdDateTime": "String (timestamp)"
}
```
