---
title: "unifiedRoleManagementAlertIncident: remediate"
description: "Remediate or mitigate an incident of an alert."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# unifiedRoleManagementAlertIncident: remediate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remediate or mitigate an incident of an alert. Run this action to fix an incident for a remediable alert, automatically applying the recommended **mitigationSteps**.

The alert incident can be one of the following types that are derived from the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object:

- [invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md)
- [noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md)
- [redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](../resources/rolesassignedoutsideprivilegedidentitymanagementalertconfiguration.md)
- [sequentialActivationRenewalsAlertIncident](../resources/sequentialactivationrenewalsalertincident.md)
- [staleSignInAlertIncident](../resources/stalesigninalertincident.md)
- [tooManyGlobalAdminsAssignedToTenantAlertIncident](../resources/toomanyglobaladminsassignedtotenantalertincident.md)

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.ReadWrite.Directory|

[!INCLUDE [rbac-pim-alerts-apis-write](../includes/rbac-for-apis/rbac-pim-alerts-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertIncidents/{unifiedRoleManagementAlertIncidentId}/remediate
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code. Calling this API for an incident that has an alert definition with **isRemediatable** set to `false` returns in a `400 Bad Request` error response.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "unifiedrolemanagementalertincidentthis.remediate"
}
-->
``` http
POST /beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert/incident/0645231d-16ba-4ebf-851a-0875df4052bd/remediate
```


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

