---
title: "directoryRole resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# directoryRole resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List directoryRoles](../api/directoryrole-list.md)|[directoryRole](../resources/directoryrole.md) collection|Get a list of the [directoryRole](../resources/directoryrole.md) objects and their properties.|
|[Create directoryRole](../api/directoryrole-post-directoryroles.md)|[directoryRole](../resources/directoryrole.md)|Create a new [directoryRole](../resources/directoryrole.md) object.|
|[Get directoryRole](../api/directoryrole-get.md)|[directoryRole](../resources/directoryrole.md)|Read the properties and relationships of a [directoryRole](../resources/directoryrole.md) object.|
|[Update directoryRole](../api/directoryrole-update.md)|[directoryRole](../resources/directoryrole.md)|Update the properties of a [directoryRole](../resources/directoryrole.md) object.|
|[Delete directoryRole](../api/directoryrole-delete.md)|None|Deletes a [directoryRole](../resources/directoryrole.md) object.|
|[List scopedMembers](../api/directoryrole-list-scopedmembers.md)|[scopedRoleMembership](../resources/scopedrolemembership.md) collection|Get the scopedRoleMembership resources from the scopedMembers navigation property.|
|[Create scopedMembers](../api/directoryrole-post-scopedmembers.md)|[scopedRoleMembership](../resources/scopedrolemembership.md)|Create a new scopedRoleMembership object.|
|[Get scopedMembers](../api/directoryrole-get-scopedrolemembership.md)|[scopedRoleMembership](../resources/scopedrolemembership.md)|Read the properties and relationships of a [scopedRoleMembership](../resources/scopedrolemembership.md) object.|
|[Update scopedMembers](../api/directoryrole-update-scopedmembers.md)|[scopedRoleMembership](../resources/scopedrolemembership.md)|Update the properties of a scopedMembers object.|
|[Delete scopedMembers](../api/directoryrole-delete-scopedmembers.md)|None|Delete a [scopedRoleMembership](../resources/scopedrolemembership.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md)|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|roleTemplateId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[directoryObject](../resources/directoryobject.md) collection|**TODO: Add Description**|
|scopedMembers|[scopedRoleMembership](../resources/scopedrolemembership.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryRole",
  "baseType": "microsoft.graph.directoryObject",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.directoryRole",
  "id": "String (identifier)",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "roleTemplateId": "String"
}
```

