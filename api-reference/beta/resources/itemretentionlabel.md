---
title: "itemRetentionLabel resource type"
description: "Groups retention and compliance-related properties on an item into a single structure."
author: "kyracatwork"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: resourcePageType
---

# itemRetentionLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups retention and compliance-related properties on an item into a single structure. Currently, supported only for [driveItem](../resources/driveitem.md).

Inherits from [entity](entity.md).

## Properties

| Property                 | Type                       | Description                                                                                                                                                      |
| :----------------------- | :------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| id| String                     | The unique identifier (name) of the label. Read-only.
| isLabelAppliedExplicitly | Boolean                       | Specifies whether the label is applied explicitly on the item. `True` indicates that the label is applied explicitly; otherwise, the label is inherited from its parent. Read-only. |
| labelAppliedBy           | [identitySet](../resources/identityset.md)          | Identity of the user who applied the label. Read-only.                                                                                                                                     |
| labelAppliedDateTime     | DateTimeOffset             | The date and time when the label was applied on the item. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.                                                                                              |
| name                     | String                     | The retention label on the document. Read-write.                                                                                                                     |
| retentionSettings        | [retentionLabelSettings](../resources/retentionlabelsettings.md) | The retention settings enforced on the item. Read-write.                                                                                                             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.itemRetentionLabel",
"optionalProperties": []
}-->

```json
{
  "id": "string (identifier)",
  "isLabelAppliedExplicitly": "Boolean",
  "labelAppliedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "labelAppliedDateTime": "String (timestamp)",
  "name": "String",
  "retentionSettings": { "@odata.type": "microsoft.graph.retentionLabelSettings" }
}
```
