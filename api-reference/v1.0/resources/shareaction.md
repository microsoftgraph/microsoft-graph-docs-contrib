---
author: daspek
title: shareAction resource type
description: The shareAction object provides information about who an item was shared to in a share action.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/06/2024
---
# shareAction resource type

Namespace: microsoft.graph

The **shareAction** resource provides information about an [activity][activity] that shared an item.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type                       | Description
|:--------------|:---------------------------|:-----------------------------
| recipients    | [identitySet][] collection | The identities the item was shared with in this action.

[identitySet]: identityset.md

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

<!--
{
  "type": "#page.annotation",
  "description": "The shareAction object provides information about who an item was shared to in a share action.",
  "keywords": "activities,activity,action,mention",
  "section": "documentation",
  "tocPath": "Resources/shareAction",
  "suppressions": []
}
-->

