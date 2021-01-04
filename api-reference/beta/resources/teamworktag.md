---
title: "teamworkTag resource type"
description: "Tags provide a flexible way for customers to classify users or groups based on a common attribute"
author: "rasikadhumal"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTag resource type

Namespace: microsoft.graph

Tags provide a flexible way for customers to classify users or groups based on a common attribute within a team. For example, a "Nurse" or "Manager" or Designer" tag will enable users to reach groups of people in Teams without having to type every single name.

Once a tag is added, users can @mention it in a channel. Everyone who has been assigned that tag will receive a notification just as they would if they were @mentioned individually. Users can also use a tag is to start a new chat with the members of that tag.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkTags](../api/teamworktag-list.md)|[teamworkTag](../resources/teamworktag.md) collection|Get a list of the [teamworkTag](../resources/teamworktag.md) objects and their properties.|
|[Create teamworkTag](../api/teamworktag-create.md)|[teamworkTag](../resources/teamworktag.md)|Create a new [teamworkTag](../resources/teamworktag.md) object.|
|[Get teamworkTag](../api/teamworktag-get.md)|[teamworkTag](../resources/teamworktag.md)|Read the properties and relationships of a [teamworkTag](../resources/teamworktag.md) object.|
|[Update teamworkTag](../api/teamworktag-update.md)|[teamworkTag](../resources/teamworktag.md)|Update the properties of a [teamworkTag](../resources/teamworktag.md) object.|
|[Delete teamworkTag](../api/teamworktag-delete.md)|None|Deletes a [teamworkTag](../resources/teamworktag.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Tag description as it will appear to the user in Microsoft Teams.|
|displayName|String|Tag name as it will appear to the user in Microsoft Teams.|
|id|String|Id of the tag.|
|memberCount|Int32|The number of users assigned to the tag.|
|tagType|teamworkTagType|The type of tag. Default is standard.|
|teamId|String|Id of the team in which the tag is defined.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[teamworkTagMember](../resources/teamworktagmember.md) collection|Users assigned to the tag.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTag",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTag",
  "id": "String (identifier)",
  "teamId": "String",
  "displayName": "String",
  "description": "String",
  "memberCount": "Integer",
  "tagType": "String"
}
```

