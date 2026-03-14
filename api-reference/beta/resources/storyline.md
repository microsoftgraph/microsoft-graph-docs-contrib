---
title: "storyline resource type"
description: "Represents a user's storyline for following and engagement features."
author: "aditijha4"
ms.date: 02/06/2026
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# storyline resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's storyline for following and engagement features. This resource enables users to follow other users in their organization and manage their following relationships.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Follow user](../api/storyline-follow.md)|None|Follow a user in the organization.|
|[Unfollow user](../api/storyline-unfollow.md)|None|Remove the specified user from the signed-in user's following list.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the storyline. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|followers|[storylineFollower](../resources/storylinefollower.md) collection|The users who are following this user.|
|followings|[storylineFollowing](../resources/storylinefollowing.md) collection|The users that this user is following.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.storyline",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.storyline",
  "id": "String (identifier)"
}
```
