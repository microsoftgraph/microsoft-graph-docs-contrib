---
title: "profilePhoto resource type"
description: "Repesents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Azure Active Directory (Azure AD)."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.prod: "people"
doc_type: resourcePageType
---

# profilePhoto resource type

Namespace: microsoft.graph

Repesents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Azure Active Directory (Azure AD). The data is binary and not encoded in base-64.

The supported sizes of HD photos on Exchange Online are as follows: `48x48`, `64x64`, `96x96`, `120x120`, `240x240`,
`360x360`,`432x432`, `504x504`, and `648x648`. In Azure AD, photos can be any dimension.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get profilePhoto](../api/profilephoto-get.md)|[profilePhoto](../resources/profilephoto.md)|Read the properties and relationships of a profile photo object.|
|[Update profilePhoto](../api/profilephoto-update.md)|[profilePhoto](../resources/profilephoto.md)|Update the properties of a profile photo object.|

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

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [],
  "isMediaEntity": true,
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
<!-- {
  "type": "#page.annotation",
  "description": "profilePhoto resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

