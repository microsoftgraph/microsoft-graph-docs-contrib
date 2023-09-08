---
title: "unifiedRoleManagementAlertConfiguration resource type"
description: "An abstract type that exposes the various configurations of a security alert that can be updated or modified in Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that exposes the various configurations of a security [alert](unifiedrolemanagementalert.md) that can be updated or modified in [Privileged Identity Management (PIM) for Azure AD roles](privilegedidentitymanagementv3-overview.md).

This abstract type is inherited by the following derived types:

- [invalidLicenseAlertConfiguration](../resources/invalidlicensealertconfiguration.md)
- [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md)
- [redundantAssignmentAlertConfiguration](../resources/redundantassignmentalertconfiguration.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](../resources/rolesassignedoutsideprivilegedidentitymanagementalertconfiguration.md)
- [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md)
- [staleSignInAlertConfiguration](../resources/stalesigninalertconfiguration.md)
- [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alertConfigurations](../api/rolemanagementalert-list-alertconfigurations.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|Get a list of the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) objects and their properties.|
|[Get unifiedRoleManagementAlertConfiguration](../api/unifiedrolemanagementalertconfiguration-get.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|Read the properties and relationships of an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object.|
|[Update unifiedRoleManagementAlertConfiguration](../api/unifiedrolemanagementalertconfiguration-update.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|Update the properties of an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Supports `$filter` (`eq`, `ne`).|
|id|String|The identifier of the alert configuration. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|`true` if the alert is enabled. Setting it to `false` disables PIM scanning the tenant to identify instances that trigger the alert.|
|scopeId|String|The identifier of the scope to which the alert is related. Only `/` is supported to represent the tenant scope. Supports `$filter` (`eq`, `ne`).|
|scopeType|String|The type of scope where the alert is created. `DirectoryRole` is the only currently supported scope type for Azure AD roles. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)| The definition of the alert that contains its description, impact, and measures to mitigate or prevent it. Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean"
}
```

