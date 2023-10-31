---
title: "privilegeEscalationGcpServiceAccountFinding resource type"
description: "GCP  service accounts with privilege escalation"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalationGcpServiceAccountFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

GCP  service accounts with privilege escalation

Inherits from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationGcpServiceAccountFindings](../api/privilegeescalationgcpserviceaccountfinding-list.md)|[privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) collection|Get a list of the [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) objects and their properties.|
|[Get privilegeEscalationGcpServiceAccountFinding](../api/privilegeescalationgcpserviceaccountfinding-get.md)|[privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md)|Read the properties and relationships of a [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) object.|
|[List potentialPrivilegeEscalations](../api/privilegeescalationgcpserviceaccountfinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get the privilegeEscalation resources from the potentialPrivilegeEscalations navigation property.|
|[Create privilegeEscalation](../api/privilegeescalationgcpserviceaccountfinding-post-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md)|Create a new privilegeEscalation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action  Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeEscalationGcpServiceAccountFinding",
  "baseType": "microsoft.graph.privilegeEscalationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeEscalationGcpServiceAccountFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

