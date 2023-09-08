---
title: "inactiveGroupFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inactiveGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveGroupFindings](../api/inactivegroupfinding-list.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md) collection|Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties.|
|[Get inactiveGroupFinding](../api/inactivegroupfinding-get.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md)|Read the properties and relationships of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|
|[Update inactiveGroupFinding](../api/inactivegroupfinding-update.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md)|Update the properties of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|
|[Delete inactiveGroupFinding](../api/inactivegroupfinding-delete.md)|None|Delete an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|
|[List authorizationSystemIdentity](../api/inactivegroupfinding-list-group.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the group navigation property.|
|[Add authorizationSystemIdentity](../api/inactivegroupfinding-post-group.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add group by posting to the group collection.|
|[Remove authorizationSystemIdentity](../api/inactivegroupfinding-delete-group.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveGroupFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveGroupFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "actionSummary": {
    "@odata.type": "microsoft.graph.actionSummary"
  },
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  }
}
```

