---
title: "group resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# group resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List groups](../api/group-list.md)|[group](../resources/group.md) collection|Get a list of the [group](../resources/group.md) objects and their properties.|
|[Get group](../api/group-get.md)|[group](../resources/group.md)|Read the properties and relationships of a [group](../resources/group.md) object.|
|[Update group](../api/group-update.md)|[group](../resources/group.md)|Update the properties of a [group](../resources/group.md) object.|
|[Delete group](../api/group-delete.md)|None|Deletes a [group](../resources/group.md) object.|
|[List photos](../api/group-list-photos.md)|[profilePhoto](../resources/profilephoto.md) collection|Get the profilePhoto resources from the photos navigation property.|
|[Create profilePhoto](../api/group-post-photos.md)|[profilePhoto](../resources/profilephoto.md)|Create a new profilePhoto object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|photo|[profilePhoto](../resources/profilephoto.md)|**TODO: Add Description**|
|photos|[profilePhoto](../resources/profilephoto.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.group"
}
```

