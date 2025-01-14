---
author: spgraph-docs-team
title: shared resource type
ms.localizationpriority: medium
description: "Indicates that a drive item has been shared with others."
ms.subservice: onedrive
doc_type: resourcePageType
ms.date: 07/30/2024
---

# shared resource type

Namespace: microsoft.graph

Indicates that a [drive item](driveitem.md) was shared with others and includes information about how the item was shared.

If a [driveItem](driveitem.md) has a non-null **shared** facet, the item was shared.

## Properties

| Property       | Type                          | Description
| :------------- |:------------------------------|:----------------------------
| owner          | [IdentitySet](identityset.md) | The identity of the owner of the shared item. Read-only.|
| sharedBy       | [identitySet](identityset.md) | The identity of the user who shared the item. Read-only.|
| sharedDateTime | DateTimeOffset                | The UTC date and time when the item was shared. Read-only.|
| scope (deprecated)| String                     | Indicates the scope of how the item is shared. The possible values are: `anonymous`, `organization`, or `users`. Read-only.|

[!INCLUDE [scope-property-deprecated](../../includes/shared-scope-property-deprecate.md)]

### scope property values

| Value          | Description                                                                           |
|:---------------|:--------------------------------------------------------------------------------------|
| `anonymous`    | The item is shared by using a link that works for anyone with the link.               |
| `organization` | The item is shared by using a link that works for anyone in the owner's organization. |
| `users`        | The item is shared with specific users only.                                          |

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shared",
  "optionalProperties": [ "sharedBy", "sharedDateTime" ]
}-->

```json
{
  "owner": { "@odata.type": "microsoft.graph.identitySet" },
  "scope": "anonymous | organization | users",
  "sharedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "sharedDateTime": "datetime"
}
```


<!-- {
  "type": "#page.annotation",
  "description": "The shared facet provides info about shared items.",
  "keywords": "shared,share,item,facet,onedrive",
  "section": "documentation",
  "suppressions": [],
  "tocPath": "Facets/Shared"
} -->
