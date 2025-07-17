---
author: daspek
description: The ShareAction resource provides information about an activity that shared an item.
ms.date: 09/14/2017
title: ShareAction
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# ShareAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **ShareAction** resource provides information about an [activity][activity] that shared an item.

[activity]: itemactivity.md

## Properties

| Property   | Type                       | Description                                             |
| :--------- | :------------------------- | :------------------------------------------------------ |
| recipients | [identitySet][] collection | The identities the item was shared with in this action. |

[identitySet]: identityset.md

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.shareAction"
}-->

```json
{
  "recipients": [{"@odata.type": "microsoft.graph.identitySet"}]
}
```

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The ShareAction object provides information about who an item was shared to in a share action.",
  "keywords": "activities,activity,action,mention",
  "section": "documentation",
  "tocPath": "Resources/ShareAction",
  "suppressions": []
}
-->
