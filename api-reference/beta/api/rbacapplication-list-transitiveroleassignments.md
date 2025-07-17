---
title: "List transitiveRoleAssignment"
description: "List direct and transitive role assignments for a specific principal."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "apiPageType"
ms.date: 07/26/2024
---

# List transitiveRoleAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of direct and transitive [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects for a specific principal. For example, if a user is assigned a Microsoft Entra role through group membership, the role assignment is transitive, and this request will list the group's ID as the **principalId**. Results can also be filtered by the **roleDefinitionId** and **directoryScopeId**. Supported only for directory (Microsoft Entra ID) provider.

For more information, see [Use Microsoft Entra groups to manage role assignments](/azure/active-directory/roles/groups-concept).

> [!NOTE]
> This request might have replication delays for role assignments that were recently created, updated, or deleted.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "rbacapplication_list_transitiveroleassignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/rbacapplication-list-transitiveroleassignments-permissions.md)]

[!INCLUDE [rbac-role-assignment-apis-read](../includes/rbac-for-apis/rbac-role-assignment-apis-read.md)]

## HTTP request

To list transitive role assignments for a directory provider:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '{principalId}'
```

## Query parameters

This method requires the `$filter` (`eq`) OData query parameter to scope the transitive role assignments to a principal. You can narrow the scope of the request by expanding the filter to other supported properties. This method also supports the `$count` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). 

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header, `$count`, and `$filter` are required. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects in the response body.

If your request doesn't include the **ConsistencyLevel** header set to `eventual`, this method returns `404 Not Found` response code.

## Examples
For the examples in this section, consider the following role assignment scenario. A user named Alice has both direct and transitive role assignments as follows:

| User | Group | Role | Scope | Role assignment ID |
| :---: | :---: | :---: | :---: | :---: |
| Alice<br/>`2c7936bc-3517-40f3-8eda-4806637b6516` |  | User Administrator<br/>`fe930be7-5e62-47db-91af-98c3a49a38b1` | Tenant | RA1<br/>`857708a7-b5e0-44f9-bfd7-53531d72a739` |
|  | G1<br/>`ae2fc327-4c71-48ed-b6ca-f48632186510`<br/>(Alice is a member) | User Administrator<br/>`fe930be7-5e62-47db-91af-98c3a49a38b1` | Tenant | RA2<br/>`8a021d5f-7351-4713-aab4-b088504d476e` |
|  | G2<br/>`6ffb34b8-5e6d-4727-a7f9-93245e7f6ea8`<br/>(Alice is a member) | Helpdesk Administrator<br/>`729827e3-9c14-49f7-bb1b-9608f156bbb8` | Administrative unit (AU1)<br/>`26e79164-0c5c-4281-8c5b-be7bc7809fb2` | RA3<br/>`6cc86637-13c8-473f-afdc-e0e65c9734d2` |

+ Alice is assigned the User Administrator role directly at tenant scope with role assignment RA1. 
+ Alice is member of a group G1 and G1 is assigned the User Administrator role at tenant scope with role assignment RA2.
+ Alice is also a member of group G2 and G2 is assigned the Helpdesk Administrator role at an administrative unit AU1 scope with role assignment RA3.

### Example 1 : Get direct and transitive role assignments of a principal

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_all"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignment-all-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-unifiedroleassignment-all-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignment-all-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignment-all-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignment-all-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignment-all-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignment-all-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignment-all-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/transitiveRoleAssignments",
    "value": [
        {
            "id": "857708a7-b5e0-44f9-bfd7-53531d72a739",
            "principalId": "2c7936bc-3517-40f3-8eda-4806637b6516",
            "directoryScopeId": "/",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        },
        {
            "id": "8a021d5f-7351-4713-aab4-b088504d476e",
            "principalId": "ae2fc327-4c71-48ed-b6ca-f48632186510",
            "directoryScopeId": "/",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        },
        {
            "id": "6cc86637-13c8-473f-afdc-e0e65c9734d2",
            "principalId": "6ffb34b8-5e6d-4727-a7f9-93245e7f6ea8",
            "directoryScopeId": "/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2",
            "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
        }
    ]
}
```

### Example 2: Get direct and transitive assignments of a principal, but only specific role definitions

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_transitive"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignment-transitive-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-unifiedroleassignment-transitive-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignment-transitive-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignment-transitive-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignment-transitive-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignment-transitive-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignment-transitive-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignment-transitive-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/transitiveRoleAssignments",
    "value": [
        {
            "id": "857708a7-b5e0-44f9-bfd7-53531d72a739",
            "principalId": "2c7936bc-3517-40f3-8eda-4806637b6516",
            "directoryScopeId": "/",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        },
        {
            "id": "8a021d5f-7351-4713-aab4-b088504d476e",
            "principalId": "6ffb34b8-5e6d-4727-a7f9-93245e7f6ea8",
            "directoryScopeId": "/",
            "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
        }
    ]
}
```

### Example 3: Get direct and transitive role assignments of a principal, but only administrative unit scoped

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_tenantscoped"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and directoryScopeId eq '/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2'
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-unifiedroleassignment-tenantscoped-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-unifiedroleassignment-tenantscoped-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-unifiedroleassignment-tenantscoped-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-unifiedroleassignment-tenantscoped-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-unifiedroleassignment-tenantscoped-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-unifiedroleassignment-tenantscoped-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-unifiedroleassignment-tenantscoped-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-unifiedroleassignment-tenantscoped-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.unifiedRoleAssignment",
  "isCollection": true
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/transitiveRoleAssignments",
    "value": [
        {
            "id": "6cc86637-13c8-473f-afdc-e0e65c9734d2",
            "principalId": "6ffb34b8-5e6d-4727-a7f9-93245e7f6ea8",
            "directoryScopeId": "/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2",
            "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
        }
    ]
}
```
