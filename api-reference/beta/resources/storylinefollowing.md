---
title: "storylineFollowing resource type"
description: "Represents a user that the specified user is following."
author: "aditijha4"
ms.date: 02/06/2026
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# storylineFollowing resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user that the specified user is following.

This resource is part of the user follow feature in employee engagement, enabling users to follow other users in their organization.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List followings](../api/storyline-list-followings.md)|[storylineFollowing](../resources/storylinefollowing.md) collection|Get a list of users that the specified user is following.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|following|[engagementIdentitySet](../resources/engagementidentityset.md)|The identity information of the user being followed.|
|id|String|The unique identifier for the following relationship. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.storylineFollowing",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.storylineFollowing",
  "id": "String (identifier)",
  "following": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  }
}
```

