---
title: "singleResourceGcpPermissionsDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# singleResourceGcpPermissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [permissionsDefinition](../resources/permissionsdefinition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionInfo|[gcpPermissionsDefinitionAction](../resources/gcppermissionsdefinitionaction.md)|**TODO: Add Description**|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|**TODO: Add Description** Inherited from [permissionsDefinition](../resources/permissionsdefinition.md).|
|resourceId|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.permissionsDefinition](../resources/permissionsdefinition.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleResourceGcpPermissionsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleResourceGcpPermissionsDefinition",
  "authorizationSystemInfo": {
    "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
  },
  "actionInfo": {
    "@odata.type": "microsoft.graph.gcpPermissionsDefinitionAction"
  },
  "resourceId": "String"
}
```

