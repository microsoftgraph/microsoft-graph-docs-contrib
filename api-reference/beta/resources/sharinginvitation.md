---
author: spgraph-docs-team
description: The SharingInvitation resource groups invitation-related data items into a single structure.
ms.date: 09/10/2017
title: SharingInvitation
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# SharingInvitation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **SharingInvitation** resource groups invitation-related data items into a single structure.

## Properties

| Property       | Type                          | Description                                                                                                                   |
| :------------- | :---------------------------- | :---------------------------------------------------------------------------------------------------------------------------- |
| email          | String                        | The email address provided for the recipient of the sharing invitation. Read-only.                                            |
| invitedBy      | [identitySet](identityset.md) | Provides information about who sent the invitation that created this permission, if that information is available. Read-only. |
| signInRequired | Boolean                       | If `true` the recipient of the invitation needs to sign in in order to access the shared item. Read-only.                     |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharingInvitation"
}-->

```json
{
  "email": "string",
  "invitedBy": {"@odata.type": "microsoft.graph.identitySet" },
  "signInRequired": true
}

```

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "The sharing invitation facet describes details of a sharing invitation associated with a permission.",
  "keywords": "image,width,height,item,facet",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
