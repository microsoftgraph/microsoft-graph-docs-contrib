---
title: "privilegeEscalationGcpServiceAccountFinding resource type"
description: "GCP  service accounts with privilege escalation"
author: "ashyasingh"
ms.reviewer: ciem_pm
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
|[List privilegeEscalationGcpServiceAccountFinding objects](../api/privilegeescalationgcpserviceaccountfinding-list.md)|[privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) collection|Get a list of the [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) objects and their properties.|
|[Get privilegeEscalationGcpServiceAccountFinding](../api/privilegeescalationgcpserviceaccountfinding-get.md)|[privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md)|Read the properties and relationships of a [privilegeEscalationGcpServiceAccountFinding](../resources/privilegeescalationgcpserviceaccountfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|identityDetails| [identityDetails](../resources/identitydetails.md)|An identity's information details. Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. Inherited from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system onboarded to Permissions Management. Inherited from [identityFinding](../resources/identityfinding.md). Autoexpanded by default.|
|potentialPrivilegeEscalations|[privilegeEscalation](../resources/privilegeescalation.md) collection|The list of escalations that the identity is capable of performing. Inherited from [microsoft.graph.privilegeEscalationFinding](../resources/privilegeescalationfinding.md)|

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
  "identityDetails": {
    "@odata.type": "#microsoft.graph.identityDetails"
  }
}
```

