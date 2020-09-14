---
title: "externalGroup resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# externalGroup resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List groups](../api/externalconnection-list-groups.md)|[externalGroup](../resources/externalgroup.md) collection|Get the externalGroup resources from the groups navigation property.|
|[Create groups](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new externalGroup object.|
|[Update groups](../api/externalconnection-update-groups.md)|[externalGroup](../resources/externalgroup.md)|Update the properties of a groups object.|
|[Get groups](../api/externalconnection-get-externalgroup.md)|[externalGroup](../resources/externalgroup.md)|Read the properties and relationships of an [externalGroup](../resources/externalgroup.md) object.|
|[Delete groups](../api/externalconnection-delete-groups.md)|None|Delete an [externalGroup](../resources/externalgroup.md) object.|
|[List externalGroups](../api/externalgroup-list.md)|[externalGroup](../resources/externalgroup.md) collection|Get a list of the [externalGroup](../resources/externalgroup.md) objects and their properties.|
|[Create externalGroup](../api/externalgroup-create.md)|[externalGroup](../resources/externalgroup.md)|Create a new [externalGroup](../resources/externalgroup.md) object.|
|[Get externalGroup](../api/externalgroup-get.md)|[externalGroup](../resources/externalgroup.md)|Read the properties and relationships of an [externalGroup](../resources/externalgroup.md) object.|
|[Update externalGroup](../api/externalgroup-update.md)|[externalGroup](../resources/externalgroup.md)|Update the properties of an [externalGroup](../resources/externalgroup.md) object.|
|[Delete externalGroup](../api/externalgroup-delete.md)|None|Deletes an [externalGroup](../resources/externalgroup.md) object.|
|[List members](../api/externalgroup-list-members.md)|[externalGroupMember](../resources/externalgroupmember.md) collection|Get the externalGroupMember resources from the members navigation property.|
|[Create members](../api/externalgroup-post-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new externalGroupMember object.|
|[Get members](../api/externalgroup-get-externalgroupmember.md)|[externalGroupMember](../resources/externalgroupmember.md)|Read the properties and relationships of an [externalGroupMember](../resources/externalgroupmember.md) object.|
|[Update members](../api/externalgroup-update-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Update the properties of a members object.|
|[Delete members](../api/externalgroup-delete-members.md)|None|Delete an [externalGroupMember](../resources/externalgroupmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[externalGroupMember](../resources/externalgroupmember.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalGroup",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalGroup",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```

