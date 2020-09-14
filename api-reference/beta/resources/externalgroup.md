---
title: "externalGroup resource type"
description: "**TODO: Add Description**"
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroup resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List externalGroups](../api/externalconnection-list-groups.md)|[externalGroup](../resources/externalgroup.md) collection|Get the externalGroup resources from the groups navigation property.|
|[Create externalGroup](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new externalGroup object.|
|[Get externalGroup](../api/externalgroup-get.md)|[externalGroup](../resources/externalgroup.md)|Read the properties and relationships of an [externalGroup](../resources/externalgroup.md) object.|
|[Delete externalGroup](../api/externalgroup-delete.md)|None|Deletes an [externalGroup](../resources/externalgroup.md) object.|
|[List members](../api/externalgroup-list-members.md)|[externalGroupMember](../resources/externalgroupmember.md) collection|Get the externalGroupMember resources from the members navigation property.|
|[Create members](../api/externalgroup-post-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new externalGroupMember object.|

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
