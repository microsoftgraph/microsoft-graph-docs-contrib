---
title: "profilePhoto resource type"
description: "Repesents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Azure Active Directory (Azure AD)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "people"
author: "kevinbellinger"
---

# profilePhoto resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Repesents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Azure Active Directory (Azure AD). The data is binary and not encoded in base-64.

The supported sizes of HD photos on Exchange Online are as follows: `48x48`, `64x64`, `96x96`, `120x120`, `240x240`,
`360x360`,`432x432`, `504x504`, and `648x648`. In Azure AD, photos can be any dimension.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get profilePhoto](../api/profilephoto-get.md) | [profilePhoto](profilephoto.md) |Get the specified **profilePhoto** or its metadata (**profilePhoto** properties). |
|[Update profilePhoto](../api/profilephoto-update.md) | [profilePhoto](profilephoto.md)  |Assign a photo to the specified user, group, team or contact. The photo should be in binary. It replaces the existing photo, if any. |

> [!NOTE]
> Managing users' photos using the Microsoft Graph API is currently not supported in Azure AD B2C tenants.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Read-only.|
|height|int32|The height of the photo. Read-only.|
|width|int32|The width of the photo. Read-only.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profilePhoto"
}-->

```json
{
  "id": "String",
  "height": 240,
  "width": 240
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "profilePhoto resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


