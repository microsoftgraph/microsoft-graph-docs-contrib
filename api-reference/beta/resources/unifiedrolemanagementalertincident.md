---
title: "unifiedRoleManagementAlertIncident resource type"
description: "An abstract type that represents the details of a security alert incident in Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the details of a security alert incident in Privileged Identity Management (PIM) for Azure AD roles.

This abstract type is inherited by the following derived types:

- [invalidLicenseAlertIncident](invalidlicensealertincident.md)
- [noMfaOnRoleActivationAlertIncident](nomfaonroleactivationalertincident.md)
- [redundantAssignmentAlertIncident](redundantassignmentalertincident.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](rolesassignedoutsideprivilegedidentitymanagementalertconfiguration.md)
- [sequentialActivationRenewalsAlertIncident](sequentialactivationrenewalsalertincident.md)
- [staleSignInAlertIncident](stalesigninalertincident.md)
- [tooManyGlobalAdminsAssignedToTenantAlertIncident](toomanyglobaladminsassignedtotenantalertincident.md)

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the alert incident. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

