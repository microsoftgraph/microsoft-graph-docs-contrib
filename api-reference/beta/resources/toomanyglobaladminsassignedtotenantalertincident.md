---
title: "tooManyGlobalAdminsAssignedToTenantAlertIncident resource type"
description: "Represents the details of an alert incident that is triggered if there are too many accounts assigned the Global Administrator role in the tenant. "
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# tooManyGlobalAdminsAssignedToTenantAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if there are too many global admins assigned to a tenant. Global administrator is the highest privileged role. If a Global Administrator is compromised, the malicious actor can gain access to all permissions, which puts the whole system at risk.


The threshold that triggers this incident when its reached is defined in the [tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type](toomanyglobaladminsassignedtotenantalertconfiguration.md).


The threshold that triggers this incident when its reached is defined in the [tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type](toomanyglobaladminsassignedtotenantalertconfiguration.md).

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident is applies to.|
|assigneeId|String|The identifier of the subject that the incident applies to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident applies to. Applies to user principals.|
|id|String|The identifier for the alert incident. For example, it could be a role assignment ID if the incident represents a role assignment. Inherited from [entity](../resources/entity.md).|

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

