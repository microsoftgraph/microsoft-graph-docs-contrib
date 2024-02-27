---
title: "community resource type"
description: "Represents a community in Viva Engage that is a central place for conversations, files, events, and updates for people sharing a common interest or goal."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: resourcePageType
---

# community resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a community in Viva Engage that is a central place for conversations, files, events, and updates for people sharing a common interest or goal.

Every community is associated with a [Microsoft 365 group](../resources/group.md), but the group doesn't have the same ID as the community. For more information about managing communities in Viva Engage, see [Use the Microsoft Graph API to work with Viva Engage](../resources/engagement-api-overview.md).

This resource is an open type that allows other properties to be passed in.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create community](../api/employeeexperience-post-communities.md)|[engagementAsyncOperation](../resources/engagementasyncoperation.md)|Create a new [community](../resources/community.md) in Viva Engage.|
|[Get community](../api/community-get.md)|[community](../resources/community.md)|Read the properties and relationships of a [community](../resources/community.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| description | String | The description of the community. The maximum length is 1024 characters. |
| displayName | String | The name of the community. The maximum length is 255 characters. |
| groupId | String | The ID of the [Microsoft 365 group](../resources/group.md) that manages the membership of this community. |
| id | String | The unique identifier of the community. Read only. Inherited from [entity](../resources/entity.md). |
| privacy | [communityPrivacy](../resources/community.md#communityprivacy-values) | Defines the privacy level of the community. The possible values are: `public`, `private`, `unknownFutureValue`. |

### communityPrivacy values

| Member | Description |
|:---------------|:----------|
| public | Any user from the tenant can join and participate in the community. |
| private | A community administrator must add tenant users to the community before they can participate. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|group|[group](../resources/group.md)|The [Microsoft 365 group](group.md) that manages the membership of this community.|
|owners|[user](../resources/user.md) collection| The admins of the community. Limited to 100 users. If this property isn't specified when you create the community, the calling user is automatically assigned as the community owner. |

## JSON representation

The following JSON representation shows the resource type.

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
  "description": "String",
  "displayName": "String",
  "groupId": "String",
  "id": "String (identifier)",
  "privacy": "String"
}
```

## Related content

- [Use the Microsoft Graph API to work with Viva Engage](engagement-api-overview.md)
- [Create a community](../api/employeeexperience-post-communities.md)
