---
title: "privilegeEscalationAwsRoleFinding resource type"
description: "AWS roles with privilege escalation"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalationAwsRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

AWS roles with privilege escalation

Inherits from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationAwsRoleFindings](../api/privilegeescalationawsrolefinding-list.md)|[privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) collection|Get a list of the [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) objects and their properties.|
|[Get privilegeEscalationAwsRoleFinding](../api/privilegeescalationawsrolefinding-get.md)|[privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md)|Read the properties and relationships of a [privilegeEscalationAwsRoleFinding](../resources/privilegeescalationawsrolefinding.md) object.|
|[List potentialPrivilegeEscalations](../api/privilegeescalationawsrolefinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get the privilegeEscalation resources from the potentialPrivilegeEscalations navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset| date specifiying when the last time the identity in this Finding executed an authorization system* Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system| Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|The list of escalations that the identity is capable of performing. Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeEscalationAwsRoleFinding",
  "baseType": "microsoft.graph.privilegeEscalationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeEscalationAwsRoleFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

