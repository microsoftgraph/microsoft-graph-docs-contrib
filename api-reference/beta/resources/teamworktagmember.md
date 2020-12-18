---
title: "teamworkTagMember resource type"
description: "**TODO: Add Description**"
author: "rasikadhumal"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTagMember resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkTagMembers](../api/teamworktagmember-list.md)|[teamworkTagMember](../resources/teamworktagmember.md) collection|Get a list of the [teamworkTagMember](../resources/teamworktagmember.md) objects and their properties.|
|[Create teamworkTagMember](../api/teamworktagmember-create.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Create a new [teamworkTagMember](../resources/teamworktagmember.md) object.|
|[Get teamworkTagMember](../api/teamworktagmember-get.md)|[teamworkTagMember](../resources/teamworktagmember.md)|Read the properties and relationships of a [teamworkTagMember](../resources/teamworktagmember.md) object.|
|[Delete teamworkTagMember](../api/teamworktagmember-delete.md)|None|Deletes a [teamworkTagMember](../resources/teamworktagmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The member's display name.|
|id|String|Id of the member.|
|tenantId|String|The tenantId that the member of the tag is a part of.|
|userId|String|The user id of the member.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "id": "String (identifier)",
  "displayName": "String",
  "tenantId": "String",
  "userId": "String"
}
```

