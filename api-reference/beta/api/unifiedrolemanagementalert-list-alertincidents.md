---
title: "List alertIncidents"
description: "Get a list of the unifiedRoleManagementAlertIncident objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List alertIncidents
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the alert incidents. The alert incidents are a collection of any following type that is derived from the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object:

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
GET /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertIncidents
```

## Optional query parameters
This method supports the `$select`, `$filter`, `$top`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects in the response body.

## Examples

### Request
The following is an example of a request that retrieves the top five alert incidents of an alert under the tenant resource scope.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalertincident"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents?$top=5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementalertincident-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementalertincident-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementalertincident-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementalertincident-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementalertincident-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementalertincident-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-unifiedrolemanagementalertincident-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementAlertIncident)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/roleManagementAlerts/alerts('DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert')/alertIncidents",
    "value": [
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "13d5df6a-3d2e-4dcb-9dab-486df2cf5c8e",
            "assigneeId": "13d5df6a-3d2e-4dcb-9dab-486df2cf5c8e",
            "assigneeDisplayName": "testUser1",
            "assigneeUserPrincipalName": "testuser1@contoso.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "1d14292b-8a56-41cb-ac9c-e1e3a69e0e71",
            "assigneeId": "1d14292b-8a56-41cb-ac9c-e1e3a69e0e71",
            "assigneeDisplayName": "testUser2",
            "assigneeUserPrincipalName": "testuser2@contoso.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "36158c4b-adc5-445c-8130-862cba705dad",
            "assigneeId": "36158c4b-adc5-445c-8130-862cba705dad",
            "assigneeDisplayName": "testUser3",
            "assigneeUserPrincipalName": "testuser3@contoso.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "38f6f1bd-2a6e-4d47-b738-0bb189c9c389",
            "assigneeId": "38f6f1bd-2a6e-4d47-b738-0bb189c9c389",
            "assigneeDisplayName": "testUser4",
            "assigneeUserPrincipalName": "testuser4@contoso.onmicrosoft.com"
        },
        {
            "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
            "id": "42793c70-b1e4-49bb-82c0-9fed214f05ab",
            "assigneeId": "42793c70-b1e4-49bb-82c0-9fed214f05ab",
            "assigneeDisplayName": "testUser5",
            "assigneeUserPrincipalName": "testuser5@contoso.onmicrosoft.com"
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents?$top=5&$skip=5"
}
```

