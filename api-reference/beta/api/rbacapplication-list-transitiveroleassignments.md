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
GET /roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '<Alice's ID>'
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
| Alice |  | User Administrator | Tenant | RA1 |
|  | G1<br/>(Alice is a member) | User Administrator | Tenant | RA2 |
|  | G2<br/>(Alice is a member) | Helpdesk Administrator | Administrative unit (AU1) | RA3 |

Alice is assigned the User Administrator role directly at tenant scope with role assignment RA1. Alice is member of a group G1 and G1 is assigned the User Administrator role at tenant scope with role assignment RA2. Alice is also a member of group G2 and G2 is assigned the Helpdesk Administrator role at an administrative unit AU1 scope with role assignment RA3.

### Example 1 : Get direct and transitive role assignments of a principal

#### Request

The following is an example of the request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` and `$filter` query parameters. For more information about the use of **ConsistencyLevel**, `$count`, and `$filter`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_all"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '{principal id}'
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
            "id": "<RA1's ID>",
            "principalId": "<Alice's ID>",
            "directoryScopeId": "/",
            "roleDefinitionId": "<User Administrator role template ID>"
        },
        {
            "id": "<RA2's ID>",
            "principalId": "<G1's ID>",
            "directoryScopeId": "/",
            "roleDefinitionId": "<User Administrator role template ID>"
        },
        {
            "id": "<RA3's ID>",
            "principalId": "<G2's ID>",
            "directoryScopeId": "/administrativeUnits/<AU1 ID>",
            "roleDefinitionId": "<Helpdesk Administrator role template ID>"
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
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '<Alice's ID>' and roleDefinitionId eq '<User Administrator role template ID>'
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
            "id": "<RA1's ID>",
            "principalId": "<Alice's ID>",
            "directoryScopeId": "/",
            "roleDefinitionId": "<User Administrator role template ID>"
        },
        {
            "id": "<RA2's ID>",
            "principalId": "<G2's ID>",
            "directoryScopeId": "/",
            "roleDefinitionId": "<User Administrator role template ID>"
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
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$count=true&$filter=principalId eq '<Alice's ID>' and directoryScopeId eq '/administrativeUnits/<AU1 ID>'
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
            "id": "<RA3's ID>",
            "principalId": "<G2's ID>",
            "directoryScopeId": "/administrativeUnits/<AU1 ID>",
            "roleDefinitionId": "<Helpdesk Administrator role template ID>"
        }
    ]
}
```
