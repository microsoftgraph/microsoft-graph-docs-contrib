---
title: "externalGroupMember resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalGroupMember resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List members](../api/externalgroup-list-members.md)|[externalGroupMember](../resources/externalgroupmember.md) collection|Get the externalGroupMember resources from the members navigation property.|
|[Create members](../api/externalgroup-post-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new externalGroupMember object.|
|[Update members](../api/externalgroup-update-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Update the properties of a members object.|
|[Get members](../api/externalgroup-get-externalgroupmember.md)|[externalGroupMember](../resources/externalgroupmember.md)|Read the properties and relationships of an [externalGroupMember](../resources/externalgroupmember.md) object.|
|[Delete members](../api/externalgroup-delete-members.md)|None|Delete an [externalGroupMember](../resources/externalgroupmember.md) object.|
|[List externalGroupMembers](../api/externalgroupmember-list.md)|[externalGroupMember](../resources/externalgroupmember.md) collection|Get a list of the [externalGroupMember](../resources/externalgroupmember.md) objects and their properties.|
|[Create externalGroupMember](../api/externalgroupmember-create.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new [externalGroupMember](../resources/externalgroupmember.md) object.|
|[Get externalGroupMember](../api/externalgroupmember-get.md)|[externalGroupMember](../resources/externalgroupmember.md)|Read the properties and relationships of an [externalGroupMember](../resources/externalgroupmember.md) object.|
|[Update externalGroupMember](../api/externalgroupmember-update.md)|[externalGroupMember](../resources/externalgroupmember.md)|Update the properties of an [externalGroupMember](../resources/externalgroupmember.md) object.|
|[Delete externalGroupMember](../api/externalgroupmember-delete.md)|None|Deletes an [externalGroupMember](../resources/externalgroupmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|identitySource|identitySourceType|**TODO: Add Description**. Possible values are: `azureActiveDirectory`, `external`.|
|type|externalGroupMemberType|**TODO: Add Description**. Possible values are: `user`, `group`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalGroupMember",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalGroupMember",
  "id": "String (identifier)",
  "type": "String",
  "identitySource": "String"
}
```

