---
title: "Get unifiedRoleManagementAlertIncident"
description: "Read the properties and relationships of an unifiedRoleManagementAlertIncident object."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get unifiedRoleManagementAlertIncident
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementAlert.Read.Directory, RoleManagementAlert.ReadWrite.Directory|

The calling user must be a member user or have the Privileged Role Administrator Azure AD role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertIncidents/{unifiedRoleManagementAlertIncidentId}
```

## Optional query parameters
This method supports the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_unifiedrolemanagementalertincident"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/roleManagementAlerts/alerts/{unifiedRoleManagementAlertId}/alertIncidents/a9f38501-74ec-43ea-8663-6c538602150d
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertIncident"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
  "id": "a9f38501-74ec-43ea-8663-6c538602150d",
  "assigneeId": "a9f38501-74ec-43ea-8663-6c538602150d",
  "assigneeDisplayName": "testUser1",
  "assigneeUserPrincipalName": "testuser1@Contoso.com"
}
```

