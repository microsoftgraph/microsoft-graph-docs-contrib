---
title: "redundantAssignmentAlertIncident resource type"
description: "Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role. Users that have been assigned privileged roles they do not need increases the chance of a security attack. It is also easier for security threats to remain unnoticed in accounts that are not actively being used."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# redundantAssignmentAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if a user goes over a specified number of days without activating a role. Users that have been assigned privileged roles they do not need increases the chance of a security attack. It is also easier for security threats to remain unnoticed in accounts that are not actively being used.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident is assigned to.|
|assigneeId|String|The identifier of the subject that the incident is assigned to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident is assigned to.|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md).|
|lastActivationDateTime|DateTimeOffset|Date and time of last activation of the eligible assignment.|
|roleDefinitionId|String|The identifier for a directory role definition.|
|roleDisplayName|String|The identifier for a directory role display name.|
|roleTemplateId|String|The identifier for a directory role template.|

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

