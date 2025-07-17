---
title: "teamworkTag resource type"
description: "Represents a tag associated with a team."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# teamworkTag resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tag associated with a team. 

Tags provide a flexible way for customers to classify users or groups based on a common attribute within a team. For example, a Nurse or Manager or Designer tag will enable users to reach groups of people in Teams without having to type every single name.

When a tag is added, users can @mention it in a channel. Everyone who has been assigned that tag receives a notification just as they would if they were @mentioned individually. Users can also use a tag is to start a new chat with the members of that tag.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/teamworktag-list.md)|[**teamworkTag**](teamworktag.md) collection|Get a list of the **teamworkTag** objects and their properties.|
|[Create](../api/teamworktag-post.md)|[**teamworkTag**](teamworktag.md)|Create a new **teamworkTag** object.|
|[Get](../api/teamworktag-get.md)|[**teamworkTag**](teamworktag.md)|Read the properties and relationships of a **teamworkTag** object.|
|[Update](../api/teamworktag-update.md)|[**teamworkTag**](teamworktag.md)|Update the properties of a **teamworkTag** object.|
|[Delete](../api/teamworktag-delete.md)|None|Delete a **teamworkTag** object permanently.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Tag description as it appears to the user in Microsoft Teams. A **teamworkTag** can't have more than 200 **teamworkTagMembers**.|
|displayName|String|Tag name as it appears to the user in Microsoft Teams.|
|id|String|ID of the tag.|
|memberCount|Int32|The number of users assigned to the tag.|
|tagType|[teamworkTagType](../resources/teamworktag.md#teamworktagtype-values)|The type of tag. Default is standard.|
|teamId|String|ID of the team in which the tag is defined.|

### teamworkTagType values

| Member             | Description                                                                                               |
|:-------------------|:----------------------------------------------------------------------------------------------------------|
| standard           | Default type for a tag. Tags of type standard can be managed in the team by members who have permissions. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                                         |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[teamworkTagMember](../resources/teamworktagmember.md) collection|Users assigned to the tag.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTag",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTag",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "memberCount": "Int32",
  "tagType": "String",
  "teamId": "String"
}
```

## Related content
- [teamworkTagMember](../resources/teamworktagmember.md)
