---
title: "List alertDefinitions"
description: "Get a list of the unifiedRoleManagementAlertDefinition objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List alertDefinitions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleManagementAlertDefinition](../resources/unifiedRoleManagementAlertDefinition.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|

[!INCLUDE [rbac-pim-alerts-apis-read](../includes/rbac-for-apis/rbac-pim-alerts-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alertDefinitions?$filter=scopeId eq 'scopeId' and scopeType eq 'scopeType'
```

## Optional query parameters
This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalertdefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alertDefinitions?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementalertdefinition-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementalertdefinition-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementalertdefinition-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementalertdefinition-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementalertdefinition-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementalertdefinition-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementalertdefinition-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlertDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alertDefinitions",
    "value": [
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_InvalidLicenseAlert",
            "displayName": "The organization doesn't have Azure AD Premium P2",
            "scopeType": "DirectoryRole",
            "scopeId": "/",
            "description": "Azure AD Privileged Identity Management requires a license, but the tenant either doesn't have an Azure AD Premium P2 license, or a trial license has expired.  If you do not obtain a license, Azure AD Privileged Identity Management and its configuration will be removed from the tenant.",
            "severityLevel": "high",
            "securityImpact": "Administrators in the tenant will not be able to use Azure AD Privileged Identity Management for role activation, access reviews or other management tasks unless a license is present.",
            "mitigationSteps": "Purchase a license plan which includes Azure AD Premium P2 for all users who will be interacting with Azure AD PIM or with Azure AD Identity Protection.  More information on pricing and purchase options is at https://azure.microsoft.com/en-us/pricing/details/active-directory/",
            "howToPrevent": "To dismiss this alert, ensure there is a license on the tenant for Azure AD Premium P2.",
            "isRemediatable": false,
            "isConfigurable": false
        },
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_NoMfaOnRoleActivationAlert",
            "displayName": "Roles don't require multi-factor authentication for activation",
            "scopeType": "DirectoryRole",
            "scopeId": "/",
            "description": "Roles are configured for activation without requiring multifactor authentication. This is highly discouraged.",
            "severityLevel": "medium",
            "securityImpact": "Without multi-factor authentication, compromised users can activate privileged roles.",
            "mitigationSteps": "Review the list of roles and require multi-factor authentication for every role.",
            "howToPrevent": "Every privileged role should be configured to require MFA for activation.",
            "isRemediatable": true,
            "isConfigurable": false
        },
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_RedundantAssignmentAlert",
            "displayName": "Eligible administrators aren't activating their privileged role",
            "scopeType": "DirectoryRole",
            "scopeId": "/",
            "description": "{0} user(s) haven't activated their privileged roles in the past {1} days",
            "severityLevel": "low",
            "securityImpact": "Users that have been assigned privileged roles they don't need increases the chance of an attack. It is also easier for attackers to remain unnoticed in accounts that are not actively being used.",
            "mitigationSteps": "Review the users in the list and remove them from privileged roles they do not need.",
            "howToPrevent": "·Assign privileged roles to users that have a business justification.·Schedule regular access reviews to verify that users still need their access.",
            "isRemediatable": true,
            "isConfigurable": true
        },
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_RolesAssignedOutsidePimAlert",
            "displayName": "Roles are being assigned outside of Privileged Identity Management",
            "scopeType": "DirectoryRole",
            "scopeId": "/",
            "description": "{0} privileged assignment(s) were made outisde of Azure AD PIM",
            "severityLevel": "high",
            "securityImpact": "Privileged role assignments made outside of Privileged Identity Management are not properly monitored and may indicate an active attack.",
            "mitigationSteps": "Review the users in the list and remove them from privileged roles assigned outside of Privileged Identity Management.",
            "howToPrevent": "Investigate where users are being assigned privileged roles outside of Privileged Identity Management and prohibit future assignments from there.",
            "isRemediatable": true,
            "isConfigurable": false
        },
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_SequentialActivationRenewalsAlert",
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
        {
            "id": "DirectoryRole_19356be4-7e93-4ed6-a7c6-0ae28454d125_StaleSignInAlert",
            "displayName": "Potential stale accounts in a privileged role",
            "scopeType": "DirectoryRole",
            "scopeId": "/",
            "description": "{0} account(s) in privileged roles that have not signed in to Azure AD in the past {1} day(s)",
            "severityLevel": "medium",
            "securityImpact": "Accounts in a privileged role have not signed in recently. These accounts might be service or shared accounts that aren't being maintained and are vulnerable to attackers.",
            "mitigationSteps": "Review the accounts in the list. If they no longer need access, remove them from their privileged roles.",
            "howToPrevent": "Regularly review accounts with privileged roles using <a href=\"https://docs.microsoft.com/en-us/azure/active-directory/governance/access-reviews-overview\" target=\"_blank\" >access reviews</a> and remove role assignments which are no longer needed.",
            "isRemediatable": true,
            "isConfigurable": true
        },
        {
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
    ]
}
```

