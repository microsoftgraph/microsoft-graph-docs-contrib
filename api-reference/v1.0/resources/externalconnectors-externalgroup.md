---
title: "externalGroup resource type"
description: "Represents an external group used to set permissions on externalItems added to a Microsoft Graph connection."
author: "sacampbe-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroup resource type

Namespace: microsoft.graph.externalConnectors

Represents an external group. External groups (along with Azure Active Directory users and groups) are used to set permissions on **externalItems** added to a Microsoft Graph connection. Use **externalGroups** to represent non-Azure Active Directory groups or group-like constructs (such as Business units, Teams, and son on) that determine permission over the content in your external data source.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create externalGroup](../api/externalconnectors-externalconnection-post-groups.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Create a new **externalGroup** object.|
|[Delete externalGroup](../api/externalconnectors-externalgroup-delete.md)|None|Delete an **externalGroup** object.|
|[Create members](../api/externalconnectors-externalgroup-post-members.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Create a new **externalGroup** member **identity** object.|


|Method|Return type|Description|
|:---|:---|:---|
|[Create externalGroup](../api/externalconnectors-externalconnection-post-groups.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Create a new [externalGroup](../resources/externalconnectors-externalgroup.md) object.|
|[Update externalGroup](../api/externalconnectors-externalgroup-update.md)|[microsoft.graph.externalConnectors.externalGroup](../resources/externalconnectors-externalgroup.md)|Update the properties of an [externalGroup](../resources/externalconnectors-externalgroup.md) object.|
|[Delete externalGroup](../api/externalconnectors-externalgroup-delete.md)|None|Deletes an [externalGroup](../resources/externalconnectors-externalgroup.md) object.|
## Properties

| Property    | Type   | Description                                                                                                              |
|:------------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
| id          | String | The unique ID of the external group within a connection. It must be alphanumeric and can be up to 128 characters long. |
| displayName | String | The friendly name of the external group. Optional.                                                                       |
| description | String | The description of the external group. Optional.        

## Relationships

| Relationship | Type                                                                  | Description                                               |
|:-------------|:----------------------------------------------------------------------|:----------------------------------------------------------|
| members      | [microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md) collectionn | A member added to an **externalGroup**. You can add Azure Active Directory users, Azure Active Directory groups, or an **externalGroup** as members. |

## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```
