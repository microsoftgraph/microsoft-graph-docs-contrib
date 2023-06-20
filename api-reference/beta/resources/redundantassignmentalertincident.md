---
title: "redundantAssignmentAlertIncident resource type"
description: "Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# redundantAssignmentAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role. Assigning users privileged roles that they do not need increases the risks of a security attack. It is also easier for security threats to remain unnoticed in accounts that are not actively used.

The threshold that triggers this incident when it's reached is defined in the [redundantAssignmentAlertConfiguration resource type](redundantassignmentalertconfiguration.md).

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

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
The following is a JSON representation of the resource.
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

