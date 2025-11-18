---
title: "inheritablePermission resource type"
description: "Defines inheritable delegated permission scope configuration for an agent identity blueprint, using collection subset patterns to specify which scopes published by a resource application may be automatically granted to agent identities without additional consent."
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# inheritablePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines inheritable delegated permission scope configuration for an agent identity blueprint, using collection subset patterns to specify which scopes published by a resource application may be automatically granted to agent identities without additional consent.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/agentidentityblueprint-list-inheritablepermissions.md)|[inheritablePermission](../resources/inheritablepermission.md) collection|Get a list of the inheritablePermission objects and their properties.|
|[Create](../api/agentidentityblueprint-post-inheritablepermissions.md)|[inheritablePermission](../resources/inheritablepermission.md)|Create a new inheritablePermission object.|
|[Get](../api/inheritablepermission-get.md)|[inheritablePermission](../resources/inheritablepermission.md)|Read the properties and relationships of [inheritablePermission](../resources/inheritablepermission.md) object.|
|[Update](../api/inheritablepermission-update.md)|[inheritablePermission](../resources/inheritablepermission.md)|Update the properties of an inheritablePermission object.|
|[Delete](../api/agentidentityblueprint-delete-inheritablepermissions.md)|None|Delete an inheritablePermission object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|inheritableScopes|[inheritableScopes](../resources/inheritablescopes.md)|Inheritance configuration for delegated permission scopes published by the resource application. Supports three patterns: `allAllowedScopes` (inherit all available scopes), `enumeratedScopes` (inherit only the listed scopes), and `noScopes` (inherit none). Each pattern exposes a `kind` discriminator for filtering.|
|resourceAppId|String| The AppId of the resource application who publishes these scopes.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "resourceAppId",
  "@odata.type": "microsoft.graph.inheritablePermission",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inheritablePermission",
  "resourceAppId": "String (identifier)",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.inheritableScopes"
  }
}
```

