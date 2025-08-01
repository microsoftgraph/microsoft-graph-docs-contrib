---
title: "unifiedRoleManagementAlertIncident resource type"
description: "An abstract type that represents the details of a security alert incident in your tenant in Privileged Identity Management (PIM) for Microsoft Entra roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Role management alert incident
ms.date: 07/22/2024
---

# unifiedRoleManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the details of an incident as part of a security [alert](unifiedrolemanagementalert.md) in [Privileged Identity Management (PIM) for Microsoft Entra roles](privilegedidentitymanagementv3-overview.md).

This abstract type is inherited by the following derived types:

- [invalidLicenseAlertIncident](invalidlicensealertincident.md)
- [noMfaOnRoleActivationAlertIncident](nomfaonroleactivationalertincident.md)
- [redundantAssignmentAlertIncident](redundantassignmentalertincident.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident](rolesassignedoutsideprivilegedidentitymanagementalertincident.md)
- [sequentialActivationRenewalsAlertIncident](sequentialactivationrenewalsalertincident.md)
- [staleSignInAlertIncident](stalesigninalertincident.md)
- [tooManyGlobalAdminsAssignedToTenantAlertIncident](toomanyglobaladminsassignedtotenantalertincident.md)

Inherits from [entity](../resources/entity.md).

For more information about working with security alerts for Microsoft Entra roles using PIM APIs, see [Manage security alerts for Microsoft Entra roles using PIM APIs in Microsoft Graph](/graph/how-to-pim-alerts).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/unifiedrolemanagementalert-list-alertincidents.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Get a list of the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects and their properties.|
|[Get](../api/unifiedrolemanagementalertincident-get.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md)|Read the properties and relationships of an [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object.|
|[Remediate](../api/unifiedrolemanagementalertincident-remediate.md)|None|Remediate or mitigate an incident of an alert.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the alert incident. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertIncident",
  "id": "String (identifier)"
}
```

## Related content
+ [Manage security alerts for Microsoft Entra roles using PIM APIs in Microsoft Graph](/graph/how-to-pim-alerts).
