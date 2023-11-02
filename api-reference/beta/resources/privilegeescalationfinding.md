---
title: "privilegeEscalationFinding resource type"
description: "A finding that represents the a list of potential exploiting of a misconfigured IAM policy or configuration oversight to gain elevated access to other permissions and resources."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalationFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A finding that represents the a list of potential exploiting of a misconfigured IAM policy or configuration oversight to gain elevated access to other permissions and resources.

Inherits from [finding](../resources/finding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationFindings](../api/privilegeescalationfinding-list.md)|[privilegeEscalationFinding](../resources/privilegeescalationfinding.md) collection|Get a list of the [privilegeEscalationFinding](../resources/privilegeescalationfinding.md) objects and their properties.|
|[Get privilegeEscalationFinding](../api/privilegeescalationfinding-get.md)|[privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|Read the properties and relationships of a [privilegeEscalationFinding](../resources/privilegeescalationfinding.md) object.|
|[List authorizationSystemIdentity](../api/privilegeescalationfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/privilegeescalationfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/privilegeescalationfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|
|[List potentialPrivilegeEscalations](../api/privilegeescalationfinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get the privilegeEscalation resources from the potentialPrivilegeEscalations navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action.	|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|*Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|
|privilegeEscalationDetails|[Collection(graph.privilegeEscalation)](../resources/privilegeescalation.md)|The list of escalations that the identity is capable of performing.|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.privilegeEscalationFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.privilegeEscalationFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

