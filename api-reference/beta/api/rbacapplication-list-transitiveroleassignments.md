---
title: "List transitiveRoleAssignment"
description: "List direct and transitive role assignments for a specific principal."
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# List transitiveRoleAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of direct and transitive [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects for a specific principal. For example, if a user is assigned an Azure AD role through group membership, the role assignment is transitive, and this request will list the group's ID as the **principalId**. Results can also be filtered by the **roleDefinitionId** and **directoryScopeId**. Supported only for directory (Azure AD) provider.

For more information, see [Use Azure AD groups to manage role assignments](/azure/active-directory/roles/groups-concept).

> [!NOTE]
> This request might have replication delays for role assignments that were recently created, updated, or deleted.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | RoleManagement.Read.Directory, Directory.Read.All, RoleManagement.ReadWrite.Directory, Directory.ReadWrite.All |

## HTTP request

To list transitive role assignments for a directory provider:

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '{principalId}'
```

## Optional query parameters

This method supports the `$count`, `$filter` (`eq`), and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). You can filter by the **principalId**, **roleDefinitionId** and **directoryScopeId** to retrieve both direct and transitive role assignments for a principal.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} Required. |
| ConsistencyLevel | eventual. This header, `$count`, and `$filter` are required. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries). |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects in the response body.

## Examples
For the examples in this section, consider the following role assignment scenario:

| User | Group | Role | Scope | Role assignment ID |
| :---: | :---: | :---: | :---: | :---: |
| Alice<br/>2c7936bc-3517-40f3-8eda-4806637b6516 |  | User Administrator<br/>fe930be7-5e62-47db-91af-98c3a49a38b1 | Tenant | RA1<br/>857708a7-b5e0-44f9-bfd7-53531d72a739 |
|  | G1<br/>ae2fc327-4c71-48ed-b6ca-f48632186510<br/>(Alice is a member) | User Administrator<br/>fe930be7-5e62-47db-91af-98c3a49a38b1 | Tenant | RA2<br/>8a021d5f-7351-4713-aab4-b088504d476e |
|  | G2<br/>6ffb34b8-5e6d-4727-a7f9-93245e7f6ea8<br/>(Alice is a member) | Helpdesk Administrator<br/>729827e3-9c14-49f7-bb1b-9608f156bbb8 | Administrative unit (AU1)<br/>26e79164-0c5c-4281-8c5b-be7bc7809fb2 | RA3<br/>6cc86637-13c8-473f-afdc-e0e65c9734d2 |

+ Alice is assigned the User Administrator role directly at tenant scope with role assignment RA1. 
+ Alice is member of a group G1 and G1 is assigned the User Administrator role at tenant scope with role assignment RA2.
+ Alice is also a member of group G2 and G2 is assigned the Helpdesk Administrator role at an administrative unit AU1 scope with role assignment RA3.

### Example 1 : Get direct and transitive role assignments of a principal

#### Request

The following is an example of the request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_all"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'
ConsistencyLevel: eventual
```
---


#### Response

The following is an example of the response.

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

The following is an example of the request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_transitive"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and roleDefinitionId eq 'fe930be7-5e62-47db-91af-98c3a49a38b1'
ConsistencyLevel: eventual
```


#### Response

The following is an example of the response.

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

The following is an example of the request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_tenantscoped"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516' and directoryScopeId eq '/administrativeUnits/26e79164-0c5c-4281-8c5b-be7bc7809fb2'
ConsistencyLevel: eventual
```
---


#### Response

The following is an example of the response.

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
