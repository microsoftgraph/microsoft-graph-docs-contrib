---
author: tushar20
ms.date: 09/04/2021
title: sharePointIdentity
ms.localizationpriority: medium
description: "The sharePointIdentity resource represents a SharePoint Identity of an actor."
ms.prod: ""
doc_type: resourcePageType
---

# sharePointIdentity resource type

The **sharePointIdentity** resource represents the SharePointIdentity of an _actor_.
It extends from the **identity** resource to provide capability to expose SharePoint specific information, for example loginName or SharePoint ids.

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

## Properties

| Property         | Type                        | Description                                                                |
|:------------     |:----------------------------|:---------------------------------------------------------------------------|
| id               | String                      | Unique identifier for the identity. Can be either AAD Id or SharePoint Id  |
| displayName      | String                      | The identity's display name. Note that this may not always be available or up to date. For example, if a user changes their display name, the API may show the new value in a future response, but the items associated with the user won't show up as having changed when using [delta](../api/driveitem-delta.md).  |
| loginName        | String                      | LoginName of the SharePoint Identity                                       |
| thumbnails       | [ThumbnailSet][] collection | Collection containing [ThumbnailSet][] objects associated with the item. For more info, see [getting thumbnails][]. Read-only. Nullable.  |

[ThumbnailSet]: thumbnailset.md
[getting thumbnails]: ../api/driveitem-list-thumbnails.md

<!-- {
  "type": "#page.annotation",
  "description": "SharePoint Identity contains information about an app, user, or group.",
  "keywords": "sharePointIdentity,loginName, sharePointId, owner, modifier, app, user, group",
  "section": "documentation",
  "tocPath": "Resources/SharePointIdentity"
} -->
