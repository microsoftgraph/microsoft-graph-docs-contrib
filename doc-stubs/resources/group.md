---
title: "group resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# group resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List allowAccessTo](../api/group-list-allowaccessto.md)|[group](../resources/group.md) collection|Get the group resources from the allowAccessTo navigation property.|
|[Add allowAccessTo](../api/group-post-allowaccessto.md)|[group](../resources/group.md)|Add allowAccessTo by posting to the allowAccessTo collection.|
|[Remove allowAccessTo](../api/group-delete-allowaccessto.md)|None|Remove a [group](../resources/group.md) object.|
|[List groups](../api/group-list.md)|[group](../resources/group.md) collection|Get a list of the [group](../resources/group.md) objects and their properties.|
|[Create group](../api/group-post-groups.md)|[group](../resources/group.md)|Create a new [group](../resources/group.md) object.|
|[Get group](../api/group-get.md)|[group](../resources/group.md)|Read the properties and relationships of a [group](../resources/group.md) object.|
|[Update group](../api/group-update.md)|[group](../resources/group.md)|Update the properties of a [group](../resources/group.md) object.|
|[Delete group](../api/group-delete.md)|None|Deletes a [group](../resources/group.md) object.|
|[List team](../api/group-list-team.md)|[team](../resources/team.md) collection|Get the team resources from the team navigation property.|
|[Create team](../api/group-post-team.md)|[team](../resources/team.md)|Create a new team object.|
|[Get team](../api/group-get-team.md)|[team](../resources/team.md)|Read the properties and relationships of a [team](../resources/team.md) object.|
|[Update team](../api/group-update-team.md)|[team](../resources/team.md)|Update the properties of a team object.|
|[Delete team](../api/group-delete-team.md)|None|Delete a [team](../resources/team.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|isArchived|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|team|[team](../resources/team.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.group",
  "baseType": "Microsoft.Teams.GraphSvc.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.group",
  "id": "String (identifier)",
  "isArchived": "Boolean"
}
```

