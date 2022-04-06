---
title: "externalGroup resource type"
description: "Represents a non-Azure Active Directory group."
author: "snlraju-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroup resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Namespace: microsoft.graph.externalConnectors

Represents a non-Azure Active Directory group.

External groups determine permissions to the content in your external data source. These external groups can be used in entries on the [acl](../resources/externalconnectors-externalitem.md) of an [externalItem](../resources/externalconnectors-externalitem.md).

Examples of external groups are business units and work teams.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create externalGroup](../api/externalconnectors-externalconnection-post-groups.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Create a new **externalGroup** object.|
|[Delete externalGroup](../api/externalconnectors-externalgroup-delete.md)|None|Delete an **externalGroup** object.|
|[Create member](../api/externalconnectors-externalgroup-post-members.md)|[microsoft.graph.externalConnectors.externalGroupMember](../resources/externalconnectors-externalgroupmember.md)|Create a new **externalGroupMember** object.|

## Properties

| Property    | Type   | Description                                                                                                              |
|:------------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
| id          | String | The unique ID of the external group within a connection. It must be alphanumeric and can be up to 128 characters long. |
| displayName | String | The friendly name of the external group. Optional.                                                                       |
| description | String | The description of the external group. Optional.                                                                         

## Relationships

| Relationship | Type                                                                  | Description                                               |
|:-------------|:----------------------------------------------------------------------|:----------------------------------------------------------|
| members      | [microsoft.graph.externalConnectors.externalGroupMember](../resources/externalconnectors-externalgroupmember.md) collection | A member added to an **externalGroup**. You can add Azure Active Directory users, Azure Active Directory groups, or other **externalGroups** as members. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalGroup",
  "openType": false
}
-->

``` json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```
