---
author: spgraph-docs-team
title: sharedDriveItem resource type
description: The sharedDriveItem resource is returned when using the Shares API to access a shared driveItem.
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
ms.date: 08/27/2024
---

# SharedDriveItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharedDriveItem** resource is returned when using the [shares](../api/shares-get.md) API to access a shared [driveItem](driveitem.md).

The **sharedDriveItem** resource is derived from [baseItem](baseitem.md) and inherits properties from that resource.

For more information about the facets on a DriveItem, see [driveItem](driveitem.md).

## Methods

| Method                                    | Return Type                           | Description |
|:------------------------------------------|:--------------------------------------|:------------|
| [Use sharing links](../api/shares-get.md) | [sharedDriveItem](shareddriveitem.md) | Access a shared item or a collection of shared items by using a **shareId** or sharing URL. |

## Properties

| Property | Type                          | Description                                                      |
| :------- | :---------------------------- | :--------------------------------------------------------------- |
| id       | String                        | The unique identifier for the share being accessed.              |
| name     | String                        | The display name of the shared item.                             |
| owner    | [identitySet](identityset.md) | Information about the owner of the shared item being referenced. |

## Relationships

| Relationship name | Type                     | Description |
| ------------------|:-------------------------|:------------|
| driveItem         | [driveItem][driveItem]   | Used to access the underlying driveItem |
| list              | [list][list]             | Used to access the underlying list |
| listItem          | [listItem][listItem]     | Used to access the underlying listItem |
| permission        | [permission][permission] | Used to access the permission representing the underlying sharing link |
| site              | [site][site]             | Used to access the underlying site |

Alternatively, for **driveItems** shared from personal OneDrive accounts, the following relationships may also be used.

| Relationship name | Type                              | Description |
| ------------------|:----------------------------------|:------------|
| items             | [driveItem][driveItem] collection | All driveItems contained in the sharing root. This collection cannot be enumerated. |

[driveItem]: driveitem.md
[list]: list.md
[listItem]: listitem.md
[permission]: permission.md
[site]: site.md

## JSON representation

The following JSON representation shows the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.baseItem",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.sharedDriveItem"
}-->

```json
{
  "id": "string",
  "name": "string",
  "owner": { "@odata.type": "microsoft.graph.identitySet" },

  "driveItem": { "@odata.type": "microsoft.graph.driveItem" },
  "items": [ { "@odata.type": "microsoft.graph.driveItem" }],
  "list": { "@odata.type": "microsoft.graph.list" },
  "listItem": { "@odata.type": "microsoft.graph.listItem" },
  "root": { "@odata.type": "microsoft.graph.driveItem" },
  "site": { "@odata.type": "microsoft.graph.site" }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Share resource returns information about a shared item or collection of items.",
  "keywords": "share,shared,sharing root,shared files, shared items",
  "section": "documentation",
  "tocPath": "Resources/Share",
  "suppressions": []
}
-->
