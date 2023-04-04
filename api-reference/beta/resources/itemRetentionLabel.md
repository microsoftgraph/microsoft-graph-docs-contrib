---
title: "itemRetentionLabel entity type"
description: "Groups retention, compliance related properties on an item into a single structure"
author: kyracatwork
ms.author: kyrachurney
ms.date: 3/20/2023

---

# itemRetentionLabel entity type

The **itemRetentionLabel** groups retention, compliance related properties on an item into a single structure.

The **itemRetentionLabel** resource is currently supported only for driveitem.

## Properties

| Property                 | Type                       | Description                                                                                                                                                      |
| :----------------------- | :------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| name                     | string                     | retention label on the document. Read-write.                                                                                                                     |
| retentionSettings        | [retentionLabelSettings][] | retention settings enforced on the item. Read-write.                                                                                                             |
| isLabelAppliedExplicitly | bool                       | Specifies whether the label is applied explicitly on the item or not. True - label is applied explicitly. False - label is inherited from its parent. Read-only. |
| labelAppliedDateTime     | DateTimeOffset             | The UTC date and time the label was applied on the item. Read-only.                                                                                              |
| labelAppliedBy           | [identitySet][]            | label applied by. Read-only.                                                                                                                                     |

## JSON Representation

Here is a JSON representation of a **microsoft.graph.itemRetentionLabel** resource.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.itemRetentionLabel",
"optionalProperties": []
}-->

```json
{
  "name": "string",
  "isLabelAppliedExplicitly": { "@odata.type": "bool" },
  "labelAppliedDateTime": "string (timestamp)",
  "labelAppliedBy": { "@odata.type": "identitySet" },

  /* relationships */
  "retentionSettings": { "@odata.type": "retentionLabelSettings" }
}
```

[identitySet]: ./identitySet.md
[retentionlabelsettings]: ./retentionLabelSettings.md


