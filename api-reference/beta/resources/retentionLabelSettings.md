---
author: kyracatwork
ms.author: kyracatwork
ms.date: 3/20/2023
title: retentionLabelSettings resource type
description: gGroups all the compliance retention restrictions on the item into a single structure
---

# retentionLabelSettings resource type

The **retentionLabelSettings** resource groups all the compliance retention restrictions on the item into a single structure.

## Properties

| Property                      | Type                          | Description                                                                                                                                                                                                                                                |
| :---------------------------- | :---------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| behaviorDuringRetentionPeriod | behaviorDuringRetentionPeriod | Describes item behavior during retention period. Possible values are - doNotRetain, retain, retainAsRecord, retainAsRegulatoryRecord, unknownFutureValue. Check - microsoft.graph.security.behaviorDuringRetentionPeriod enum for more details. Read-only. |
| isDeleteAllowed               | bool                          | Specifies whether the document deletion is allowed or not. Read-only.                                                                                                                                                                                      |
| isRecordLocked                | bool                          | Specifies whether the item is locked or not. Read-write.                                                                                                                                                                                                   |
| isMetadataUpdateAllowed       | bool                          | Specifies whether updates to item metadata (Ex. Title field) are blocked or not. Read-only.                                                                                                                                                                |
| isContentUpdateAllowed        | bool                          | Specifies whether updates to document content is allowed or not. Read-only.                                                                                                                                                                                |
| isLabelUpdateAllowed          | bool                          | Specifies whether changing retention label on the document is allowed or not. Read-only.                                                                                                                                                                   |

## JSON Representation

Here is a JSON representation of a **microsoft.graph.retentionLabelSettings** resource.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.retentionLabelSettings",
"optionalProperties": []
}-->

```json
{
  "isDeleteAllowed": false,
  "behaviorDuringRetentionPeriod": "string",
  "isRecordLocked": false,
  "isMetadataUpdateAllowed": false,
  "isContentUpdateAllowed": false,
  "isLabelUpdateAllowed": false
}
```
