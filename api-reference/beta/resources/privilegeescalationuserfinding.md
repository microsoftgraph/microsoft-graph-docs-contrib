---
title: "privilegeEscalationUserFinding resource type"
description: "A finding that represents the a list of potential exploiting of a misconfigured IAM policy or configuration oversight to gain elevated access to other permissions and resources."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalationUserFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A finding that represents the a list of potential exploiting of a misconfigured IAM policy or configuration oversight to gain elevated access to other permissions and resources.

Inherits from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationUserFindings](../api/privilegeescalationuserfinding-list.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) collection|Get a list of the [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) objects and their properties.|
|[Get privilegeEscalationUserFinding](../api/privilegeescalationuserfinding-get.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md)|Read the properties and relationships of a [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) object.|
|[List potentialPrivilegeEscalations](../api/privilegeescalationuserfinding-list-potentialprivilegeescalations.md)|[privilegeEscalation](../resources/privilegeescalation.md) collection|Get the privilegeEscalation resources from the potentialPrivilegeEscalations navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action. Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity. Supports `$filter` (`gt`) and `$orderby`. Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|represents users with the potential to escalate privileges Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|

## JSON representation

The following JSON representation shows the resource type.
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
