---
title: "externalGroup resource type"
description: "Represents a non-Microsoft Entra group."
author: "sacampbe-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# externalGroup resource type

Namespace: microsoft.graph.externalConnectors

Represents a non-Microsoft Entra group.

External groups determine permissions to the content in your external data source. These external groups can be used in entries on the [acl](../resources/externalconnectors-externalitem.md) of an [externalItem](../resources/externalconnectors-externalitem.md).

Examples of external groups are business units and work teams.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/externalconnectors-externalconnection-post-groups.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Create a new **externalGroup** object.|
|[Get](../api/externalconnectors-externalgroup-get.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Get an **externalGroup** object.|
|[Update](../api/externalconnectors-externalgroup-update.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Update the properties of an **externalGroup** object.|
|[Delete](../api/externalconnectors-externalgroup-delete.md)|None|Delete an **externalGroup** object.|

## Properties

| Property    | Type   | Description                                                                                                              |
|:------------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
| description | String | The description of the external group. Optional.      |
| displayName | String | The friendly name of the external group. Optional.                                                                       |
| id          | String | The unique ID of the external group within a connection. It must be alphanumeric and can be up to 128 characters long. |  

## Relationships

| Relationship | Type                                                                  | Description                                               |
|:-------------|:----------------------------------------------------------------------|:----------------------------------------------------------|
| members      | [microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md) collection | A member added to an **externalGroup**. You can add Microsoft Entra users, Microsoft Entra groups, or an **externalGroup** as members. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalGroup",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)"
}
```
