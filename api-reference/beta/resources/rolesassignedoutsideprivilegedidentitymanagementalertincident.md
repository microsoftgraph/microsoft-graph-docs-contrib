---
title: "rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type"
description: "Represents an alert incident that is triggered if roles have been assigned outside of Privileged Identity Management in the last 30 days."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if roles have been assigned outside of Privileged Identity Management in the last 30 days.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident applies to.|
|assigneeId|String|The identifier of the subject that the incident applies to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident applies to. Applies to user principals.|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|lastActivationDateTime|DateTimeOffset|Date and time of last activation of the eligible assignment.|
|roleDefinitionId|String|The identifier for the [directory role definition](unifiedroledefinition.md) that's in scope of this incident.|
|roleDisplayName|String|The display name for the [directory role](unifiedroledefinition.md).|
|roleTemplateId|String|The globally unique identifier for the [directory role](unifiedroledefinition.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDefinitionId": "String",
  "roleDisplayName": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "assignmentCreatedDateTime": "String (timestamp)"
}
```

