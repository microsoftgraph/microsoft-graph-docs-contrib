---
title: "redundantAssignmentAlertIncident resource type"
description: "Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Redundant assignment
ms.date: 09/19/2024
---

# redundantAssignmentAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role. Assigning users privileged roles that they don't need increases the risks of a security attack. It's also easier for security threats to remain unnoticed in accounts that aren't actively used.

The threshold that triggers this incident when it's reached is defined in the [redundantAssignmentAlertConfiguration resource type](redundantassignmentalertconfiguration.md).

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident applies to.|
|assigneeId|String|The identifier of the subject that the incident applies to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident applies to. Applies to user principals only. |
|id|String|The identifier for an alert incident. For example, it could be a role assignment ID if the incident represents a role assignment. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|lastActivationDateTime|DateTimeOffset|Date and time of the last activation of the eligible assignment.|
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
  "@odata.type": "microsoft.graph.redundantAssignmentAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redundantAssignmentAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDefinitionId": "String",
  "roleDisplayName": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "lastActivationDateTime": "String (timestamp)"
}
```

