---
title: "List roleManagementPolicyAssignments"
description: "Get a list of the unifiedRoleManagementPolicyAssignment objects and their properties."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# List roleManagementPolicyAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of all role management policy assignments including the policies and rules associated with the Azure AD roles, or Pim for Group membership and ownership.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For PIM for Azure AD roles

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.Directory, RoleManagement.Read.Directory, RoleManagement.Read.All, RoleManagementPolicy.ReadWrite.Directory, RoleManagement.ReadWrite.Directory|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagement.Read.All, RoleManagement.Read.Directory, RoleManagement.ReadWrite.Directory|

### For PIM for groups

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|
|Delegated (personal Microsoft account)|Not supported|
|Application|RoleManagementPolicy.Read.AzureADGroup, RoleManagementPolicy.ReadWrite.AzureADGroup|

## HTTP request

To retrieve details of all role management policy assignments for Azure AD roles scoped to the tenant:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'DirectoryRole'
```

To retrieve details of all role management policy assignments for PIM for groups membership and ownership scoped to a group:
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/roleManagementPolicyAssignments?$filter=scopeId eq '{groupId}' and scopeType eq 'Group'
```

## Optional query parameters
This method requires the `$filter` (`eq`) query parameter to scope the request to a **scopeId** and a **scopeType**. To retrieve Azure AD roles policies, **scopeId** must be `/` and, **scopeType** can be either `Directory` or `DirectoryRole`. To retrieve Pim for Group policies for member and owner, **scopeId** must be `group ID` and, **scopeType** must be `Group`. You can also filter by the **roleDefinitionId** or use the `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) objects in the response body.

## Examples

### Example 1: Retrieve details of all role management policy assignments for PIM for Azure AD roles

### Request

The following example retrieves details of all role management policy assignments that are scoped to the tenant and apply to directory roles.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_directory"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '/' and scopeType eq 'Directory'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-unifiedrolemanagementpolicyassignment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-unifiedrolemanagementpolicyassignment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-unifiedrolemanagementpolicyassignment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-unifiedrolemanagementpolicyassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-unifiedrolemanagementpolicyassignment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-unifiedrolemanagementpolicyassignment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments",
    "value": [
        {
            "id": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9_fe930be7-5e62-47db-91af-98c3a49a38b1",
            "policyId": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        },
        {
            "id": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_da83a66c-eb51-44ae-98d8-3da5f924f90a_0526716b-113d-4c15-b2c8-68e3c22b9f80",
            "policyId": "Directory_84841066-274d-4ec0-a5c1-276be684bdd3_da83a66c-eb51-44ae-98d8-3da5f924f90a",
            "scopeId": "/",
            "scopeType": "Directory",
            "roleDefinitionId": "0526716b-113d-4c15-b2c8-68e3c22b9f80"
        }
    ]
}
```

### Example 2: Retrieve details of all role management policy assignments for PIM for groups

### Request

The following example retrieves details of all role management policy assignments that are scoped to the group and apply to PIM for groups membership and ownership.

<!-- {
  "blockType": "request",
  "name": "list_unifiedrolemanagementpolicyassignment_azureADGroup"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/roleManagementPolicyAssignments?$filter=scopeId eq '60bba733-f09d-49b7-8445-32369aa066b3' and scopeType eq 'Group'
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.unifiedRoleManagementPolicyAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/roleManagementPolicyAssignments",
    "value": [
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369_member",
            "policyId": "Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369",
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "roleDefinitionId": "member"
        },
        {
            "id": "Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316_owner",
            "policyId": "Group_60bba733-f09d-49b7-8445-32369aa066b3_8ea17f58-323f-4b16-a1a1-2a7b8d974316",
            "scopeId": "60bba733-f09d-49b7-8445-32369aa066b3",
            "scopeType": "Group",
            "roleDefinitionId": "owner"
        }
    ]
}
```