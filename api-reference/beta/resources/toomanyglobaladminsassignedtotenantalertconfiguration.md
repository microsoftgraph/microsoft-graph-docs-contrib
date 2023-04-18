---
title: "tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type"
description: "Represents an alert configuration that is triggered if too many accounts in the tenant are assigned the Global Administrator Azure AD role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert configuration that is triggered if too many accounts in the tenant are assigned the Global Administrator Azure AD role. [Global Administrator](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json#global-administrator) is the highest privileged role in Azure AD. If an account with global administrator privileges is compromised, the malicious actor has permissions for almost all actions in the tenant, which puts the whole system at risk.

Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|globalAdminCountThreshold|Int32| The threshold for the number of accounts assigned the Global Administrator role in the tenant. Triggers an alert if the number of global administrators in the tenant reaches or crosses this threshold value. |
|id|String|The identifier of the alert configuration. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|True if the alert is enabled. Setting to false will disable scanning for the specific alert. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|percentageOfGlobalAdminsOutOfRolesThreshold|Int32|Threshold of the percentage of global administrators out of all the role assignments in the tenant. Triggers an alert if the percentage in the tenant reaches or crosses this threshold value.|
|scopeId|String|The identifier of the scope where the alert is related. For example, directory id, application id, etc. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeType|String|The type of scope where the alert is created. DirectoryRole is the only currently supported scope type for Azure AD Roles. New types like Application and Group may be introduced later. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Alert definition that contains description, impact, mitigation, prevention. Inherited from [microsoft.graph.unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean",
  "globalAdminCountThreshold": "Integer",
  "percentageOfGlobalAdminsOutOfRolesThreshold": "Integer"
}
```

