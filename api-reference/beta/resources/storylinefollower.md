---
title: "storylineFollower resource type"
description: "Represents a user who is following a specified user."
author: "aditijha4"
ms.date: 02/06/2026
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# storylineFollower resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user who is following a specified user.

This resource is part of the user follow feature in employee engagement, enabling users to follow other users in their organization.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List followers](../api/storyline-list-followers.md)|[storylineFollower](../resources/storylinefollower.md) collection|Get a list of users who are following a specified user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|follower|[engagementIdentitySet](../resources/engagementidentityset.md)|The identity information of the user who is following.|
|id|String|The unique identifier for the follower relationship. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.storylineFollower",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.storylineFollower",
  "id": "String (identifier)",
  "follower": {
    "@odata.type": "microsoft.graph.engagementIdentitySet"
  }
}
```

