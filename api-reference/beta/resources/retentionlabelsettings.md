---
title: "retentionLabelSettings resource type"
description: "Groups all the compliance retention restrictions on the item into a single structure."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# retentionLabelSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups all the compliance retention restrictions on the item into a single structure.

## Properties

| Property                      | Type                          | Description                                                                                                                                                                                                                                                |
| :---------------------------- | :---------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| behaviorDuringRetentionPeriod | microsoft.graph.security.behaviorDuringRetentionPeriod | Describes the item behavior during retention period. Possible values are: `doNotRetain`, `retain`, `retainAsRecord`, `retainAsRegulatoryRecord`, `unknownFutureValue`. Read-only. |
| isContentUpdateAllowed        | Boolean                          | Specifies whether updates to document content is allowed. Read-only.                                                                                                                                                                                |
| isDeleteAllowed               | Boolean                          | Specifies whether the document deletion is allowed. Read-only.                                                                                                                                                                                      |
| isLabelUpdateAllowed          | Boolean                          | Specifies if you are allowed to change the retention label on the document. Read-only.                                                                                                                                                                   |
| isMetadataUpdateAllowed       | Boolean                          | Specifies whether updates to the item metadata (for example, the **Title** field) are blocked. Read-only.                                                                                                                                                                |
| isRecordLocked                | Boolean                          | Specifies whether the item is locked. Read-write.                                                                                                                                                                                                   |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.retentionLabelSettings",
"optionalProperties": []
}-->

```json
{
  "behaviorDuringRetentionPeriod": "String",
  "isContentUpdateAllowed": "Boolean",
  "isDeleteAllowed": "Boolean",
  "isLabelUpdateAllowed": "Boolean",
  "isMetadataUpdateAllowed": "Boolean",
  "isRecordLocked": "Boolean"
}
```
