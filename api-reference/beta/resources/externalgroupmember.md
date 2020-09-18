---
title: "externalGroupMember resource type"
description: "**TODO: Add Description**"
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroupMember resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create externalGroupMembers](../api/externalgroup-post-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new externalGroupMember object.|
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
