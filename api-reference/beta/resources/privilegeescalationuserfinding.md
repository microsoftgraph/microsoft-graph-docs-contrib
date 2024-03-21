---
title: "privilegeEscalationUserFinding resource type"
description: "Represents findings for a list of users who can escalate privileges in AWS or GCP."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# privilegeEscalationUserFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for a list of users who can potentially exploit of a misconfigured IAM policy or configuration oversight to gain elevated access to other permissions and resources in AWS and GCP.

Inherits from [privilegeEscalationFinding](../resources/privilegeescalationfinding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List privilegeEscalationUserFinding objects](../api/privilegeescalationuserfinding-list.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) collection|Get a list of the [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) objects and their properties.|
|[Get privilegeEscalationUserFinding](../api/privilegeescalationuserfinding-get.md)|[privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md)|Read the properties and relationships of a [privilegeEscalationUserFinding](../resources/privilegeescalationuserfinding.md) object.|

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
  "identityDetails": {
    "@odata.type": "#microsoft.graph.identityDetails"
  }
}
```
