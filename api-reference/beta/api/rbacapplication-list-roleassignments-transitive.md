---
title: "List transitive unifiedRoleAssignment"
description: "List direct and transitive role assignments for a specific principal."
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# List direct and transitive unifiedRoleAssignments for a principal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of direct and transitive [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects for a specific principal. It can be used if a user is assigned Azure AD role via a group. For more information, see [Use cloud groups to manage role assignments in Azure Active Directory](/azure/active-directory/roles/groups-concept). 

If the role assignment is transitive, the group's ID will be returned for `principalID`. Results can also be filtered based on `roleDefinitionId` and `directoryScopeId`. 

Supported only for directory (Azure AD) provider. 

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

This method supports OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [unifiedRoleAssignment](../resources/unifiedroleassignment.md) objects in the response body.

## Examples
In examples below, we will consider following set up - 
* Alice -----> User Administrator (at tenant scope) : Role Assignment RA1
* Alice -----> Group G1 -----> User Administrator (at tenant scope) : Role assignment RA2
* Alice -----> Group G2 -----> Helpdesk Administrator (at an administrative unit AU1 scope) : Role assignment RA3

That is, Alice is assigned User Administrator directly over tenant scope (role assignment 1 or RA1). Alice is member of a group G1 and G1 is assigned User Administrator role over tenant scope (role assignment 2 or RA2). Alice is also a member of group G2 and G2 is assigned Helpdesk Administrator role over an administrative unit AU1 scope (role assignment 3 or RA3).

### Example 1 : Get direct and transitive role assignments of a principal

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_all"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '{principal id}'
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignments",
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

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_transitive"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '<Alice's ID>' & roleDefinitionId eq '<User Administrator role template ID>'
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignments",
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

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_unifiedroleassignment_tenantscoped"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/directory/transitiveRoleAssignments?$filter=principalId eq '<Alice's ID>' & directoryScopeID eq '/administrativeUnits/AU1 ID>'
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/directory/roleAssignments",
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
