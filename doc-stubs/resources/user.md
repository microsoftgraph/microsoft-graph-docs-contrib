---
title: "user resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# user resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List users](../api/user-list.md)|[user](../resources/user.md) collection|Get a list of the [user](../resources/user.md) objects and their properties.|
|[Create user](../api/user-post-user.md)|[user](../resources/user.md)|Create a new [user](../resources/user.md) object.|
|[Get user](../api/user-get.md)|[user](../resources/user.md)|Read the properties and relationships of a [user](../resources/user.md) object.|
|[Update user](../api/user-update.md)|[user](../resources/user.md)|Update the properties of a [user](../resources/user.md) object.|
|[Delete user](../api/user-delete.md)|None|Deletes a [user](../resources/user.md) object.|
|[List photos](../api/user-list-photos.md)|[profilePhoto](../resources/profilephoto.md) collection|Get the profilePhoto resources from the photos navigation property.|
|[Create profilePhoto](../api/user-post-photos.md)|[profilePhoto](../resources/profilephoto.md)|Create a new profilePhoto object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|photo|[profilePhoto](../resources/profilephoto.md)|**TODO: Add Description**|
|photos|[profilePhoto](../resources/profilephoto.md) collection|**TODO: Add Description**|
|profile|[profile](../resources/profile.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.user",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.user",
  "id": "String (identifier)"
}
```

