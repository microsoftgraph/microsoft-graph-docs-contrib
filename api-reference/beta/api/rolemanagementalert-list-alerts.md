---
title: "List alerts"
description: "Get a list of the unifiedRoleManagementAlert objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List alerts
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rolemanagementalert_list_alerts" } -->
[!INCLUDE [permissions-table](../includes/permissions/rolemanagementalert-list-alerts-permissions.md)]

[!INCLUDE [rbac-pim-alerts-apis-read](../includes/rbac-for-apis/rbac-pim-alerts-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alerts?$filter=scopeId eq 'scopeId' and scopeType eq 'scopeType'
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) objects in the response body.

## Examples

### Example 1: Get all alerts and expand the relationships

#### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalert"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'&$expand=alertDefinition,alertConfiguration,alertIncidents
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementalert-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-unifiedrolemanagementalert-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementalert-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementalert-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementalert-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementalert-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementalert-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementalert-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlert)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts(alertDefinition(),alertConfiguration(),alertIncidents())",
    "value": [
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
            "alertDefinitionId": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 2,
            "isActive": true,
            "lastModifiedDateTime": "2023-05-27T19:16:09.643Z",
            "lastScannedDateTime": "2023-06-11T23:01:35.21Z",
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
            },
            "alertConfiguration": {
                "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
                "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
                "alertDefinitionId": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert",
                "scopeType": "DirectoryRole",
                "scopeId": "/",
                "isEnabled": true,
                "globalAdminCountThreshold": 2,
                "percentageOfGlobalAdminsOutOfRolesThreshold": 4
            },
            "alertIncidents@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts('DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_TooManyGlobalAdminsAssignedToTenantAlert')/alertIncidents",
            "alertIncidents": [
                {
                    "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
                    "id": "f5417b06-cdae-417f-9589-a334104206cf",
                    "assigneeId": "f5417b06-cdae-417f-9589-a334104206cf",
                    "assigneeDisplayName": "testUser1",
                    "assigneeUserPrincipalName": "testuser1@contoso.com"
                },
                {
                    "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
                    "id": "861e0b20-1e9f-4ca9-bcd1-ddc22c5d7320",
                    "assigneeId": "861e0b20-1e9f-4ca9-bcd1-ddc22c5d7320",
                    "assigneeDisplayName": "testUser2",
                    "assigneeUserPrincipalName": "testuser2@contoso.com"
                }
            ]
        }
    ]
}
```

### Example 2: Get all alerts where the alert configuration is disabled and expand all the relationships

#### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole' and alertConfiguration/isEnabled eq false&$expand=*
```

#### Response

```http
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts(alertConfiguration(),alertDefinition(),alertIncidents())",
    "value": [
        {
            "id": "DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert",
            "alertDefinitionId": "DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert",
            "scopeId": "/",
            "scopeType": "DirectoryRole",
            "incidentCount": 0,
            "isActive": false,
            "lastModifiedDateTime": "0001-01-01T08:00:00Z",
            "lastScannedDateTime": "2023-06-19T16:30:55.887Z",
            "alertConfiguration": {
                "@odata.type": "#microsoft.graph.sequentialActivationRenewalsAlertConfiguration",
                "id": "DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert",
                "alertDefinitionId": "DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert",
                "scopeType": "DirectoryRole",
                "scopeId": "/",
                "isEnabled": false,
                "timeIntervalBetweenActivations": "PT10S",
                "sequentialActivationCounterThreshold": 3
            },
            "alertDefinition": {
                "id": "DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert",
                "displayName": "Roles are being activated too frequently",
                "scopeType": "DirectoryRole",
                "scopeId": "/",
                "description": "{0} multiple activations for a privileged role were made by the same user",
                "severityLevel": "medium",
                "securityImpact": "Multiple activations to the same privileged role by the same user is a sign of an attack.",
                "mitigationSteps": "Review the users in the list and ensure that the activation duration for their privileged role is set long enough for them to perform their tasks.",
                "howToPrevent": "·Ensure that the activation duration for privileged roles is set long enough for users to perform their tasks.·Require multi-factor authentication for privileged roles that have accounts shared by multiple administrators.",
                "isRemediatable": false,
                "isConfigurable": true
            },
            "alertIncidents@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts('DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_SequentialActivationRenewalsAlert')/alertIncidents",
            "alertIncidents": []
        }
    ]
}
```
