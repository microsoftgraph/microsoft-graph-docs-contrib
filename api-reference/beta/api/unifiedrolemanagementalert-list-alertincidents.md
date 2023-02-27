---
title: "List unifiedRoleManagementAlertIncidents"
description: "Get a list of the unifiedRoleManagementAlertIncident objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List unifiedRoleManagementAlertIncidents
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertIncidents
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

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects in the response body.

## Examples

### Example 1: Get the alert incidents with pagination for Azure AD roles under a resource scope like tenant.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementalertincident"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents?$top=5
```


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
        "id": "0645231d-16ba-4ebf-851a-0875df4052bd",
        "assigneeId": "0645231d-16ba-4ebf-851a-0875df4052bd",
        "assigneeDisplayName": "test-user",
        "assigneeUserPrincipalName": "testUser@azrbac.ccsctp.net"
        }
    ]
    "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/DirectoryRole_67b47f38-0f0b-4e62-a3be-859140c2061f_TooManyGlobalAdminsAssignedToTenantAlert/alertIncidents?$top=5&$skip=5"
}
```

