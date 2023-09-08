---
title: "privilegeEscalationUserFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# privilegeEscalationUserFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationUserFindings](../api/privilegeescalationuserfinding-list.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) collection|Get a list of the [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) objects and their properties.|
|[Get privilegeEscalationUserFinding](../api/privilegeescalationuserfinding-get.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md)|Read the properties and relationships of a [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) object.|
|[Update privilegeEscalationUserFinding](../api/privilegeescalationuserfinding-update.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md)|Update the properties of a [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) object.|
|[Delete privilegeEscalationUserFinding](../api/privilegeescalationuserfinding-delete.md)|None|Delete a [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) object.|
|[List authorizationSystemIdentity](../api/privilegeescalationuserfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/privilegeescalationuserfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/privilegeescalationuserfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|
|[List potentialPrivilegeEscalations](../api/privilegeescalationuserfinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get the privilegeEscalation resources from the potentialPrivilegeEscalations navigation property.|
|[Create privilegeEscalation](../api/privilegeescalationuserfinding-post-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md)|Create a new privilegeEscalation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeEscalationUserFinding",
  "baseType": "microsoft.graph.privilegeEscalationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeEscalationUserFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

