---
author: tushar20
title: sharePointIdentity resource type
ms.localizationpriority: medium
description: "Represents the SharePoint identity of an actor."
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# sharePointIdentity resource type

Represents the **sharePointIdentity** of an _actor_.

This resource extends from the **identity** resource to expose SharePoint-specific information; for example, **loginName** or SharePoint IDs.

## Properties

| Property         | Type                        | Description |
|:------------     |:----------------------------|:--------------------------------- |
| displayName      | String                      | The identity's display name and might not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using [delta](../api/driveitem-delta.md). |
| id               | String                      | Unique identifier for the identity. It can be either a Microsoft Entra ID or a SharePoint ID. |
| loginName        | String                      | The sign in name of the SharePoint identity. |
| thumbnails       | [thumbnailSet][] collection | Collection that contains [thumbnailSet][] objects associated with the item. For more information, see [List thumbnails for a driveItem][]. Read-only. Nullable. |

## Relationships
None.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.sharePointIdentity",
  "openType": true,
  "optionalProperties": ["displayName", "thumbnails"]
} -->

```json
{
  "loginName": "string",

  /** inherited from Identity */
  "displayName": "string",
  "id": "string",
  "thumbnails": [{ "@odata.type": "microsoft.graph.thumbnailSet" }]
}
```

[thumbnailSet]: thumbnailset.md
[List thumbnails for a driveItem]: ../api/driveitem-list-thumbnails.md

<!-- {
  "type": "#page.annotation",
  "description": "SharePoint Identity contains information about an app, user, or group.",
  "keywords": "sharePointIdentity, loginName, sharePointId, owner, modifier, app, user, group",
  "section": "documentation",
  "tocPath": "Resources/SharePointIdentity"
} -->
