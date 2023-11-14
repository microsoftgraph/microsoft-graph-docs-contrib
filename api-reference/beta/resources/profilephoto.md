---
title: "profilePhoto resource type"
description: "Represents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Microsoft Entra ID."
ms.localizationpriority: medium
author: "kristinmcleod"
ms.prod: "people"
doc_type: resourcePageType
---

# profilePhoto resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a profile photo of a user, group, team, or Outlook contact accessed from Exchange Online or Microsoft Entra ID. The data is binary and not encoded in base-64.

The supported sizes of HD photos on Exchange Online are as follows: `48x48`, `64x64`, `96x96`, `120x120`, `240x240`,
`360x360`,`432x432`, `504x504`, and `648x648`. In Microsoft Entra ID, photos can be any dimension.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get profilePhoto](../api/profilephoto-get.md)|[profilePhoto](../resources/profilephoto.md)|Read the properties and relationships of a profile photo object.|
|[Update profilePhoto](../api/profilephoto-update.md)|[profilePhoto](../resources/profilephoto.md)|Update the properties of a profile photo object.|
|[Delete profilePhoto](../api/profilephoto-delete.md)|[profilePhoto](../resources/profilephoto.md)|Delete the profile photo _of a user or group_.|

> [!NOTE]
> - Managing users' photos using the Microsoft Graph API is currently _not supported in Azure AD B2C tenants_.
> 
> - The delete operation supports only user or group photos, but _not Outlook contact nor Teams photos_.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Read-only.|
|height|int32|The height of the photo. Read-only.|
|width|int32|The width of the photo. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

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
  "tocPath": "",
  "suppressions": []
}
-->
