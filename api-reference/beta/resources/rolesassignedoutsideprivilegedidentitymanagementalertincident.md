---
title: "rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type"
description: "Represents an alert incident that is triggered if roles have been assigned outside of Privileged Identity Management in the last 30 days."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Roles assigned outside PIM
ms.date: 09/19/2024
---

# rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if roles have been assigned outside of Privileged Identity Management in the last 30 days.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident applies to.|
|assignmentCreatedDateTime|DateTimeOffset|Date and time of assignment creation.|
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
The following JSON representation shows the resource type.
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

