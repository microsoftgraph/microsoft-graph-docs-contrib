---
title: "tooManyGlobalAdminsAssignedToTenantAlertIncident resource type"
description: "Represents the details of an alert incident that is triggered if there are too many accounts assigned the Global Administrator role in the tenant."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# tooManyGlobalAdminsAssignedToTenantAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an alert incident that is triggered if there are too many accounts assigned the Global Administrator role in the tenant. [Global Administrator](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json#global-administrator) is the highest privileged role in Azure AD. If an account with global administrator privileges is compromised, the malicious actor has permissions for almost all actions in the tenant, which puts the entire tenant at risk.

The threshold that triggers this incident when its reached is defined in the [tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type](toomanyglobaladminsassignedtotenantalertconfiguration.md).

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident applies to.|
|assigneeId|String|The identifier of the subject that the incident applies to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident applies to. Applies to user principals.|
|id|String|The identifier for the alert incident. For example, it could be a role assignment ID if the incident represents a role assignment. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
  "id": "String (identifier)",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String"
}
```

