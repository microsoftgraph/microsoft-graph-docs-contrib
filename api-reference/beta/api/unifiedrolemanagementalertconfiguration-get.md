---
title: "Get unifiedRoleManagementAlertConfiguration"
description: "Read the properties and relationships of an unifiedRoleManagementAlertConfiguration object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleManagementAlertConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an alert configuration. The alert configuration can be one of the following types that are derived from the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object:

- [invalidLicenseAlertConfiguration](../resources/invalidlicensealertconfiguration.md)
- [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md)
- [redundantAssignmentAlertConfiguration](../resources/redundantassignmentalertconfiguration.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](../resources/rolesassignedoutsideprivilegedidentitymanagementalertconfiguration.md)
- [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md)
- [staleSignInAlertConfiguration](../resources/stalesigninalertconfiguration.md)
- [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md)

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedrolemanagementalertconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedrolemanagementalertconfiguration-get-permissions.md)]

[!INCLUDE [rbac-pim-alerts-apis-read](../includes/rbac-for-apis/rbac-pim-alerts-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alertConfigurations/{unifiedRoleManagementAlertConfigurationId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementalertconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert?$expand=alertDefinition
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedrolemanagementalertconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-unifiedrolemanagementalertconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedrolemanagementalertconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedrolemanagementalertconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedrolemanagementalertconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedrolemanagementalertconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedrolemanagementalertconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedrolemanagementalertconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alertConfigurations(alertDefinition())/$entity",
    "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
    "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
    "alertDefinitionId": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
    "scopeType": "DirectoryRole",
    "scopeId": "/",
    "isEnabled": true,
    "globalAdminCountThreshold": 2,
    "percentageOfGlobalAdminsOutOfRolesThreshold": 4,
    "alertDefinition": {
        "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
        "displayName": "There are too many global administrators",
        "scopeType": "DirectoryRole",
        "scopeId": "/",
        "description": "The percentage of global administrators is high, relative to other privileged roles. It is recommended to use least privileged roles, with just enough privileges to perform the required tasks.",
        "severityLevel": "low",
        "securityImpact": "Global administrator is the highest privileged role. If a Global Administrator is compromised, the attacker gains access to all of their permissions, which puts your whole system at risk.",
        "mitigationSteps": "·Review the users in the list and remove any that do not absolutely need the Global Administrator role.·Assign lower privileged roles to these users instead.",
        "howToPrevent": "Assign users the least privileged role they need.",
        "isRemediatable": true,
        "isConfigurable": true
    }
}
```

