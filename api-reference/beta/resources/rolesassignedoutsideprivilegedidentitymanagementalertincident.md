---
title: "rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List rolesAssignedOutsidePrivilegedIdentityManagementAlertIncidents](../api/rolesassignedoutsideprivilegedidentitymanagementalertincident-list.md)|[rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md) collection|Get a list of the [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md) objects and their properties.|
|[Get rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../api/rolesassignedoutsideprivilegedidentitymanagementalertincident-get.md)|[rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md)|Read the properties and relationships of a [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md) object.|
|[Update rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../api/rolesassignedoutsideprivilegedidentitymanagementalertincident-update.md)|[rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md)|Update the properties of a [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md) object.|
|[Delete rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../api/rolesassignedoutsideprivilegedidentitymanagementalertincident-delete.md)|None|Delete a [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](../resources/rolesassignedoutsideprivilegedidentitymanagementalertincident.md) object.|
|[remediate](../api/rolesassignedoutsideprivilegedidentitymanagementalertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|**TODO: Add Description**|
|assigneeId|String|**TODO: Add Description**|
|assigneeUserPrincipalName|String|**TODO: Add Description**|
|assignmentCreatedDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|roleDefinitionId|String|**TODO: Add Description**|
|roleDisplayName|String|**TODO: Add Description**|
|roleTemplateId|String|**TODO: Add Description**|

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

