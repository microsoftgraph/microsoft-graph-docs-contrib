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
|[Create externalGroup](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new externalGroup object.|
|[Delete externalGroup](../api/externalgroup-delete.md)|None|Deletes an [externalGroup](../resources/externalgroup.md) object.|
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
