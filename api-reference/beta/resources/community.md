---
title: "community resource type"
description: "Communities in Viva Engage serve the needs of knowledge-sharing, collaborative employee experience, company-wide communications, and leadership engagement by providing a central place for conversations, files, events, and updates for people sharing a common interest or goal."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: resourcePageType
---

# community resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Community in Viva Engage is a central place for conversations, files, events, and updates for people sharing a common interest or goal. 

Every community is associated with a [Microsoft 365 group](../resources/group.md), but the group does not have the same ID as the community. For more information about managing communities and members in Viva Engage, see [Use the Microsoft Graph REST API to work with Viva Engage](../resources/engage-api-overview.md).

This resource is an open type that allows other properties to be passed in.
## Methods
|Method|Return type|Description|
|:---|:---|:---|
<!--|[List communities](../api/employeeexperience-list-communities.md)|[community](../resources/community.md) collection|Get a list of the [community](../resources/community.md) objects and their properties.|-->
|[Create community](../api/employeeexperience-post-communities.md)|[community](../resources/community.md)|Create a new [community](../resources/community.md) object.|
|[Get community](../api/community-get.md)|[community](../resources/community.md)|Read the properties and relationships of a [community](../resources/community.md) object.|
<!--|[Update community](../api/community-update.md)|[community](../resources/community.md)|Update the properties of a [community](../resources/community.md) object.|
|[Delete community](../api/employeeexperience-delete-communities.md)|None|Delete a [community](../resources/community.md) object.|-->


## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | The unique identifier of the community. Read only. |
| displayName | String | The name of the community. Maximum length 255 characters. |
| description | String | The description of the community, maximum length 1024 characters. |
| privacy | [communityPrivacy](../resources/communityprivacy.md) | Defines the privacy level of a community. The possible values are: `public` or `private`. |
| groupId | String | The id of the [Microsoft 365 group](../resources/group.md) that manages the membership of this community. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The [Microsoft 365 group](group.md) that manages the membership of this community.|
|owners|[user](../resources/user.md) collection| The Admins of the community. Limited to 100 users. If this property is not specified when creating a community, the calling user is automatically assigned as the community owner. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.community",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.community",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "privacy": "String",
  "groupId": "String"
}
```

## See also

- [Use the Microsoft Graph REST API to work with Viva Engage](engage-api-overview.md)
- [Create a community](../api/employeeexperience-post-communities.md)