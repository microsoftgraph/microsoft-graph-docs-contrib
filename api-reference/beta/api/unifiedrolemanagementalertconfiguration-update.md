---
title: "Update unifiedRoleManagementAlertConfiguration"
description: "Update the properties of an unifiedRoleManagementAlertConfiguration object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 04/05/2024
ms.custom: sfi-ga-nochange
---

# Update unifiedRoleManagementAlertConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an alert configuration. The alert configuration can be one of the following types that are derived from the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object:

- [invalidLicenseAlertConfiguration](../resources/invalidlicensealertconfiguration.md)
- [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md)
- [redundantAssignmentAlertConfiguration](../resources/redundantassignmentalertconfiguration.md)
- [rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration](../resources/rolesassignedoutsideprivilegedidentitymanagementalertconfiguration.md)
- [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md)
- [staleSignInAlertConfiguration](../resources/stalesigninalertconfiguration.md)
- [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md)

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedrolemanagementalertconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedrolemanagementalertconfiguration-update-permissions.md)]

[!INCLUDE [rbac-pim-alerts-apis-write](../includes/rbac-for-apis/rbac-pim-alerts-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/roleManagementAlerts/alertConfigurations/{unifiedRoleManagementAlertConfigurationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

You must include the **@odata.type** property in the body of the request. The value for this property must be the same as the derived alert configuration type that you are updating. For example, if you are updating the **tooManyGlobalAdminsAssignedToTenantAlertConfiguration** alert configuration, the value for the **@odata.type** property must be **#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|duration|Boolean|The number of days to look back on from current timestamp. <br/><br/>Can be updated for the **redundantAssignmentAlertConfiguration** and the **staleSignInAlertConfiguration** alert configuration type.|
|globalAdminCountThreshold|Int32|The threshold for the number of accounts assigned the Global Administrator role in the tenant. Triggers an alert if the number of global administrators in the tenant reaches or crosses this threshold value. <br/><br/>Can be updated for the **tooManyGlobalAdminsAssignedToTenantAlertConfiguration** alert configuration type.|
|isEnabled|Boolean|True if the alert is enabled. Setting to false will disable scanning for the specific alert. Optional. <br/><br/>Can be updated for all alert configuration types.|
|percentageOfGlobalAdminsOutOfRolesThreshold|Int32|Threshold of the percentage of global administrators out of all the role assignments in the tenant. Triggers an alert if the percentage in the tenant reaches or crosses this threshold value. <br/><br/>Can be updated for the **tooManyGlobalAdminsAssignedToTenantAlertConfiguration** alert configuration type.|
|sequentialActivationCounterThreshold|Int32|The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert. <br/><br/>Can be updated for the **sequentialactivationrenewalsalertconfiguration** alert configuration type.|
|timeIntervalBetweenActivations|Duration|Time interval between activations to trigger an alert. <br/><br/>Can be updated for the **sequentialactivationrenewalsalertconfiguration** alert configuration type.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_unifiedrolemanagementalertconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertConfigurations/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "isEnabled": "true",
  "globalAdminCountThreshold": 7,
  "percentageOfGlobalAdminsOutOfRolesThreshold": 70
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-unifiedrolemanagementalertconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-unifiedrolemanagementalertconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-unifiedrolemanagementalertconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-unifiedrolemanagementalertconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-unifiedrolemanagementalertconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-unifiedrolemanagementalertconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-unifiedrolemanagementalertconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-unifiedrolemanagementalertconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

