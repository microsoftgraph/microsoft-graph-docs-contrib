---
title: "teamworkTagMember resource type"
description: "Represents a user in a team to whom a tag is applied."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTagMember resource type

Namespace: microsoft.graph

Represents a user in a team to whom a tag is applied.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkTagMembers](../api/teamworktagmember-list.md)|[teamworkTagMember](teamworktagmember.md) collection|Get a list of the [members](../resources/teamworktagmember.md) of a standard tag in a team and their properties.|
|[Create teamworkTagMember](../api/teamworktagmember-post.md)|[teamworkTagMember](teamworktagmember.md)|Create a new [teamworkTagMember](../resources/teamworktagmember.md) object in a team.|
|[Get teamworkTagMember](../api/teamworktagmember-get.md)|[teamworkTagMember](teamworktagmember.md)|Get the properties and relationships of a [member](../resources/teamworktagmember.md) of a standard tag in a team.|
|[Delete teamworkTagMember](../api/teamworktagmember-delete.md)|None|Delete a [member](../resources/teamworktagmember.md) from a standard tag in a team.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The member's display name.|
|id|String|The unique identifier for the member. Inherited from [entity](../resources/entity.md).|
|tenantId|String|The ID of the tenant that the tag member is a part of.|
|userId|String|The user ID of the member.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "displayName": "String",
  "id": "String (Identifier)",
  "tenantId": "String",
  "userId": "String"
}
```
